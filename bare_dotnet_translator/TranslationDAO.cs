using MySql.Data.MySqlClient;

namespace bare_dotnet_translator
{
    internal class TranslationDAO
    {
        string connectionString = "Server=localhost;Port=3306;Database=translation_schema;Uid=root;Pwd=#Temporary4334";

        /// <summary>
        /// This function looks up the id of the english expression in the translation_schema.english table.
        /// </summary>
        /// <param name="searchedExpression"></param>
        /// <returns></returns>
        public string getTranslatedExpression(string searchedExpression)
        {
            // return value for translation
            string returnValue = "";

            // connection to mysql server
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            // modified expression with correct lookup syntax
            string modExpression = "%" + searchedExpression + "%";

            // define SQL statement to fetch id of english expression
            MySqlCommand command = new MySqlCommand();
            // this way database is protected against SQL Injection
            command.CommandText = "SELECT id FROM translation_schema.english WHERE expression LIKE @search";
            command.Parameters.AddWithValue("@search", modExpression);
            command.Connection = connection;

            using (MySqlDataReader reader = command.ExecuteReader())
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        int rowId = reader.GetInt32(0);
                        returnValue = GetHungarianExpression(rowId);
                    }
                }
                else
                    return "";
            }
            connection.Close();
            return returnValue;
        }

        /// <summary>
        /// Looks up the hungarian term in the translation_schema.hungarian table with the use of the id of the english expression.
        /// </summary>
        /// <param name="rowId"></param>
        /// <returns></returns>
        private string GetHungarianExpression(int rowId)
        {
            // return value for translation
            string returnValue = "";

            // connection to mysql server
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            MySqlCommand finalCommand = new MySqlCommand();

            finalCommand.CommandText = "SELECT expression FROM translation_schema.hungarian WHERE id IN (@searchId)";
            finalCommand.Parameters.AddWithValue("@searchId", rowId);
            finalCommand.Connection = connection;

            using (MySqlDataReader reader = finalCommand.ExecuteReader())
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        returnValue = reader.GetString(0);
                    }
                }
                else
                    return "";
            }
            return returnValue;
        }
    }
}

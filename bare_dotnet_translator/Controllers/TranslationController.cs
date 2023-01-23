using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace bare_dotnet_translator.Controllers
{
    // routing for API call
    [Route("[controller]")]
    [ApiController]
    public class TranslationController : ControllerBase
    {
        [AllowAnonymous]
        [HttpGet("{expToTranslate}")]
        public object Get(string expToTranslate)
        {
            // return value for translated expression
            string expTranslated = "";

            // instantiating a new Data Access Object for translation lookup
            TranslationDAO translationDAO = new TranslationDAO();
            expTranslated = translationDAO.getTranslatedExpression(expToTranslate);

            return expTranslated;
        }
    }
}

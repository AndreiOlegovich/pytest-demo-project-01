const playwright = require('playwright')

(async() => {
        
        const browser = await playwright["chromium"].launch({
		headless: false
	});
        
        const context = await browser.newContext();
        
        const page = await context.newPage();
        
        await page.goto("https://www.aredel.com/qa/ui/basic/");
})

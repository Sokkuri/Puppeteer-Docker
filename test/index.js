const puppeteer = require("puppeteer");

let browser;

(async () => {
    try {
        browser = await puppeteer.launch({
            headless: true,
            args: [ "--no-sandbox", "--disable-setuid-sandbox" ]
        });
    } catch (error) {
        console.log(error);
        process.exit(1);
    }
})().finally(async () => await browser?.close());

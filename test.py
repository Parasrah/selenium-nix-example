from os import environ
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

firefox_options = webdriver.FirefoxOptions()
# make sure we are using the binary pulled in via nix
firefox_options.binary_location = environ['FIREFOX_PATH']
firefox_options.add_argument('--headless')
driver = webdriver.Firefox(options=firefox_options)
driver.get("http://www.python.org")
assert "Python" in driver.title
elem = driver.find_element_by_name("q")
elem.clear()
elem.send_keys("pycon")
elem.send_keys(Keys.RETURN)
assert "No results found." not in driver.page_source
driver.close()

chrome_options = webdriver.ChromeOptions()
# make sure we are using the binary pulled in via nix
chrome_options.binary_location = environ['CHROME_PATH']
chrome_options.add_argument('--headless')
driver = webdriver.Chrome(options=chrome_options)
driver.get("http://www.python.org")
assert "Python" in driver.title
elem = driver.find_element_by_name("q")
elem.clear()
elem.send_keys("pycon")
elem.send_keys(Keys.RETURN)
assert "No results found." not in driver.page_source
driver.close()

print('finished successfully')

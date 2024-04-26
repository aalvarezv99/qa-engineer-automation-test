from selenium.webdriver.common.by import By


class HomeWebElements:
    where_label = (By.CSS_SELECTOR, '.primary-content h2')
    signin_button = (By.XPATH, '//span[text() = "Iniciar sesión"]')
    search_button = (By.XPATH, '//button[@aria-label = "Buscar"]')

    @staticmethod
    def get_element_by_text(text):
        element = (By.XPATH, f'//*[contains(text(), "{text}")]')
        return element

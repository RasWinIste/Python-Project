import unittest
from pythonProject.core import App

class TestApp(unittest.TestCase):
    def test_app_initialization(self):
        app = App()
        self.assertEqual(app.user.name, "Alice")

if __name__ == "__main__":
    unittest.main()
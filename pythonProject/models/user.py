class User:
    def __init__(self, name: str):
        self.name = name
        # Comment in the code v2

    def __repr__(self):
        return f"<User name={self.name}>"

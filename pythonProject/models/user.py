from datetime import date

class User:
    def __init__(self, name: str, birthday: date, address: str):
        self.name = name
        self.birthday = birthday
        self.address = address

    def age(self) -> int:
        today = date.today()
        return today.year - self.birthday.year - (
            (today.month, today.day) < (self.birthday.month, self.birthday.day)
        )

    def is_birthday_today(self) -> bool:
        today = date.today()
        return today.month == self.birthday.month and today.day == self.birthday.day

    def __repr__(self):
        return (
            f"<User name={self.name}, "
            f"birthday={self.birthday.isoformat()}, "
            f"address={self.address}>"
        )

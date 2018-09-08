from tatsu.buffering import Buffer

class Lexer(Buffer):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
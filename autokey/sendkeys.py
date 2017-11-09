import logging
import re

h = store.get_global_value('hotkey')
s =  engine.get_return_value()
logging.info("combo got: " + str(s)) # autokey-gtk -l

logging.info(window.get_active_class())

if re.match('.*(Emacs|Gvim)', window.get_active_class()):
    logging.info("send " + h)
    keyboard.send_keys(h)
else:
    logging.info("send " + s)
    keyboard.send_keys(s)

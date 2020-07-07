from aloe import before, step, world
from asserts import *

@before.each_example
def setupStore(*args):
    world.menu = {
    "coffee": {"price":1.00, "label_text":"brew"},
    "latte": {"price":1.50, "label_text":"Cafe Au Lait"}, 
    "mocha": {"price":1.75, "label_text":"Cafe Mocha"}  
    }

@step(r'a User on mobile with a selected store')
def set_user_store(self):
    world.store = "pikeplace"

@step(r'a "([^"]*)" is ordered')
def order_beverage(self, ordered_beverage):
    world.actual_beverage = world.menu[ordered_beverage]

@step(r'the selected store prints a label with the text "([^"]*)"')
def validate_label(self, expected_label_text):
    assert_equal(world.actual_beverage['label_text'], expected_label_text)
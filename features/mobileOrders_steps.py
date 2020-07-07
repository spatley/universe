from aloe import before, step, world
from asserts import *
from features import StoreAdapter



@step(r'a User on mobile with a selected store')
def set_user_store(self):
    world.store = "pikeplace"

@step(r'a "([^"]*)" is ordered')
def order_beverage(self, ordered_beverage):
    world.actual_beverage = StoreAdapter.store_menu[ordered_beverage]

@step(r'the selected store prints a label with the text "([^"]*)"')
def validate_label(self, expected_label_text):
    assert_equal(world.actual_beverage['label_text'], expected_label_text)
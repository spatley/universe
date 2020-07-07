from aloe import before, step, world
from asserts import *
from features import StoreAdapter



@step(r'a User on mobile with a selected store')
def set_user_store(self):
    world.store = "pikeplace"

@step(r'a "([^"]*)" is ordered')
def order_beverage(self, ordered_beverage):
    world.actual_beverage = StoreAdapter.store_menu.get(ordered_beverage)
    assert_is_not_none(world.actual_beverage, "{beverage_name} is not found on the menu".format(beverage_name = ordered_beverage))

@step(r'the selected store prints a label with the text "([^"]*)"')
def validate_label(self, expected_label_text):
    assert_equal(world.actual_beverage['label_text'], expected_label_text, "the expected label text of {expected_value} was not on the label. Instead the label text found was {actual_value}".format(expected_value = expected_label_text, actual_value = world.actual_beverage["label_text"]))
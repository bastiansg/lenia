#include <gtest/gtest.h>
#include <iostream>


TEST(HelloTest, BasicAssertions) {
    // Expect two strings not to be equal.
    EXPECT_STREQ("hello", "world");
    // Expect equality.
    EXPECT_EQ(7 * 6, 42);
}
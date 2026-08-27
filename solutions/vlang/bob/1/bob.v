module main

fn is_yelling(text string) bool {
    mut is_all_capitals := false

    for i := 0; i < text.len; i++ {
        c := text[i]
        if c >= `A` && c <= `Z` {
            is_all_capitals = true
        } else if c >= `a` && c <= `z` {
            return false
        }
    }

    return is_all_capitals
}

fn response(hey_bob string) string {
    text := hey_bob.trim_space()

    if text.len == 0 {
        return "Fine. Be that way!"
    }
    question := text.ends_with("?")
    yelling := is_yelling(text)

    if question && yelling {
        return "Calm down, I know what I'm doing!"
    }

    if question {
        return "Sure."
    }

    if yelling {
        return "Whoa, chill out!"
    }
    return "Whatever."
}
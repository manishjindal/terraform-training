variable project {
    type = string
}
variable region {
    type = string
    default = "us-central1"
}
variable zone {
    type = string
    default = "us-central1-a"
}
variable name {
    type = string
    default = "test"
}
variable machine_type {
    type = map
    default = {
        dev = "e2-medium"
        test = "e2-medium"
    }
}
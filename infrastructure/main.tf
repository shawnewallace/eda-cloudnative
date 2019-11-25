resource "random_id" "server" {
  keepers = {
    azi_id = 1
    #hex_dev = "f947d465acaef4c3" #dev
    #hex_dev = "dae114f082d2b2b4" #test
    hex_dev = "7f8636c612f63250" #prod
  }

  byte_length = 8
}
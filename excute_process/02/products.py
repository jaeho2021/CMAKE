import sys, getopt
import yaml

def get_product_yml_item(file, key_word, ret="print"):
    filename = file
    keys = key_word.split('/')
    try:
        with open(filename, 'r') as _f:
            doc = yaml.safe_load(_f)
            value = doc
            for key in keys:
                value=value[key]
            if ret == "print":
                print(value)
            else:
                return value
    except:
        if ret == "print":
            return
        else:
            return None

def main(argv):
    argv = argv[1:]
    args = len(argv)
    if args != 2:
        return
    get_product_yml_item(argv[0], argv[1])


if __name__ == "__main__":
    main(sys.argv)

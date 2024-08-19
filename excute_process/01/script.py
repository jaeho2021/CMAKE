import configparser
import argparse

def main():
    parser = argparse.ArgumentParser(description="Read a configuration file.")
    parser.add_argument('config_file', type=str, help='Path to the configuration file')
    parser.add_argument('--section', type=str, default='Settings', help='Section to read from the configuration file')
    parser.add_argument('--key', type=str, required=True, help='Key to read from the configuration file')

    args = parser.parse_args()

    config = configparser.ConfigParser()
    config.read(args.config_file)

    print("111111111111")
    print(config.sections)
    print("222222222222")

    if args.section in config and args.key in config[args.section]:
        print(config[args.section][args.key])
    else:
        print(f"Key '{args.key}' not found in section '{args.section}'")

if __name__ == "__main__":
    main()
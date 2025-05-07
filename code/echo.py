import argparse;

parser = argparse.ArgumentParser(description='Echo your input')
parser.add_argument('--message', help='Message to echo', required=True)

args = parser.parse_args()

print(args.message)
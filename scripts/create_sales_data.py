import random

def main():
    max_product_id = 60
    max_sales_id = 20
    max_product_count = 14
    min_product_count = 3
    out_file = 'create_sales.sql'

    with open(out_file, 'w') as f:
        f.write('insert into SalesEntries (sales_id, product_id, count) values \r')
        data = ''
        for sales_id in range(1, max_sales_id + 1):
            already_bought = []
            product_count = random.randint(min_product_count, max_product_count)
            for i in range(product_count):
                product_id = random.randint(1, max_product_id)
                while product_id in already_bought:
                    product_id = random.randint(1, max_product_id)

                count = get_count()
                data += '(%d, %d, %d),\r' % (sales_id, product_id, count)
                already_bought.append(product_id)
        data = data[:len(data) - 2]
        f.write(data)
        f.write(';')

def get_count():
    num = random.randint(1, 10)
    if num <= 7:
        return 1
    elif 7 < num and num <= 9:
        return 2
    else:
        return 3

if __name__ == '__main__':
    main()

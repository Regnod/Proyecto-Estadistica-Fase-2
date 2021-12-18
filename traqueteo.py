with open('./2014_nba_draft_combine.csv', 'r') as f:
  input = f.read()
  input = input.split('\n')
  data = []
  row_names = []
  for i in input[0].split(','):
    # if i:
    row_names.append(i)
    data.append([])

  csv = {row_names[i]:data[i] for i in range(len(row_names))}
  a = 0

  for row in input[1:]:
    for i,value in enumerate(row.split(',')):
      if i == 0:
        continue
      if value == '':
        continue

      try:
        value = float(value)
      except:
        pass
      data[i].append(value)

  b = 0

  # column = 'Vertical (No Step)'
  column = 'Vertical (No Step Reach)'
  column = 'Sprint'

  print(sum(csv[column])/len(csv[column]))

# frozen_string_literal: true

class DsAlgo
  def ds_eff?
    puts '+-----------------------------------------------------------------------------------+'
    puts '|                          Efficency table for DsAlgo                               |'
    puts '|                                                                                   |'
    puts '|                        B- Begining, M- Middle,  E- End                            |'
    puts '+-----------------------------------------------------------------------------------+'
    puts '| Type         |  Indexing  |  Insert/Delete B|  Insert/Delete E|  Insert/Delete M  |'
    puts '+-----------------------------------------------------------------------------------+'
    puts '|Linked list(S)|     O(n)  |       O(1)      |       O(1)      | search time+O(1)   |'
    puts '+-----------------------------------------------------------------------------------+'
    puts '|Linked list(D)|     O(n)  |       O(1)      |       O(1)      | search time+O(1)   |'
    puts '+-----------------------------------------------------------------------------------+'
  end
end

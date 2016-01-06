require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("beowolf").title_case()).to(eq("Beowolf"))
  end
  it("capitalizes the first letter of a multiple word string") do
    expect(("beowulf begins").title_case()).to(eq("Beowulf Begins"))
  end
  it("does not capitalize designated words (prepositions, conjunctions, etc)") do
    expect(("beowulf from brighton beach").title_case()).to(eq("Beowulf from Brighton Beach"))
  end
  it("capitalizes designated words if they are the first word") do
    expect(("from beowulf to the hulk").title_case()).to(eq("From Beowulf to the Hulk"))
  end
  it("handles non-letter characters") do
    expect(("57 beowulf alternate endings!!").title_case()).to(eq("57 Beowulf Alternate Endings!!"))
  end
  it("manages all uppercase entries") do
    expect(("BEOWULF ON THE ROCKS").title_case()).to(eq("Beowulf on the Rocks"))
  end
  it("manages mixed case entries") do
    expect(("BeoWulf aNd mE").title_case()).to(eq("Beowulf and Me"))
  end
end

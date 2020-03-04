RSpec.describe Math::Tree::Parser do
  subject { described_class.new(expression) }
  let(:expression) { "2*(3+4)" }

  its(:_parser) { is_expected.to be_a Dentaku::Parser }
end

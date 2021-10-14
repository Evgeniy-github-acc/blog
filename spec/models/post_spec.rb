require "spec_helper"

describe Post do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
  end

  describe "associations" do
    it { should have_many(:comments) }
  end

  describe '#subject' do
    it "returns the post title" do
      post = create(:post, title: 'Lorem Ipsum')

      expect(post.subject).to eq 'Lorem Ipsum'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
      post = create(:post_with_comments)   
      
      expect(post.last_comment.body).to eq "comment body 3"
    end
  end
end
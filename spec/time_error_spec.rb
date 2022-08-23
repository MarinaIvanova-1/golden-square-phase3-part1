require 'time_error'

RSpec.describe TimeError do
  it "returns the differene in seconds between server time and computer time" do
    fake_time = Time.new(2022)
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip"))
      .and_return('{"abbreviation":"BST","client_ip":"82.25.2.6","datetime":"2022-08-22T16:53:59.058619+01:00","day_of_week":1,"day_of_year":234,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1661183639,"utc_datetime":"2022-08-22T15:53:59.058619+00:00","utc_offset":"+01:00","week_number":34}')
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(fake_time)).to eq DateTime.parse("2022-08-22T15:53:59.058619+00:00").to_time - fake_time
  end
end

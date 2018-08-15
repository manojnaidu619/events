class HomeController < ApplicationController
  def index
    if coordinator_signed_in?
      redirect_to dashboard_path                                                  # Separate Root page to Logged in Co-ordinator!!
    end
    @events = Event.all
     respond_to do |format|
       format.html
       format.pdf do                                                              # Responding to .pdf format
         pdf = Prawn::Document.new                                                # Create new Prawn Object
         pdf.text "It's Working"                                                  # Appending Text
         send_data pdf.render, type: 'application/pdf', disposition: 'inline'     # Outputting the pdf file, disposition means showing the file inside browser
       end
     end
  end
end

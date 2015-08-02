require 'open-uri'

class ClientsController < ApplicationController
  expose(:clients){ Client.all }
  expose(:client, attributes: :client_params)

  def create
    if client.save
      client.abby unless client.business_card.to_s.empty?
      client.process_params unless client.params.empty?
      flash[:notice] = t(:client_was_successfully_created)
      redirect_to clients_path
    else
      render :new
    end
  end

  def update
    if client.save
      client.abby unless client.business_card.to_s.empty?
      flash[:notice] = t(:client_was_successfully_updated)
      redirect_to clients_path
    else
      render :edit
    end
  end

  def client_params
    params.require(:client).permit!
  end
end

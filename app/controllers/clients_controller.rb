class ClientsController < ApplicationController
  expose(:clients){ Client.all }
  expose(:client, attributes: :client_params)

  def create
    if client.save
      client.send_to_abbyy
      flash[:notice] = t(:client_was_successfully_created)
      redirect_to clients_path
    else
      render :new
    end
  end

  def update
    if client.save
      client.send_to_abbyy
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

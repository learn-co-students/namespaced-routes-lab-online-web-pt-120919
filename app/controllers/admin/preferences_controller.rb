class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.find(1)
  end

  def edit
    @preference = Preference.find(1)
  end

  def update
    @preference = Preference.find(1)
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
  end
end

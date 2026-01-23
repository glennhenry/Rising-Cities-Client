package net.bigpoint.cityrama.model.optionsMenu.vo
{
   public class OptionsListItemVo
   {
      
      private var _locaID:String;
      
      private var _isSelected:Boolean;
      
      public function OptionsListItemVo(param1:String, param2:Boolean)
      {
         super();
         this._locaID = param1;
         this._isSelected = param2;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
      }
      
      public function get locaID() : String
      {
         return this._locaID;
      }
      
      public function set locaID(param1:String) : void
      {
         this._locaID = param1;
      }
   }
}


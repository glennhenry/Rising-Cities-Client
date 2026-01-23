package net.bigpoint.cityrama.model.detailViews.vo
{
   public class OptionsDetailViewVo
   {
      
      private var _optionsList:Array;
      
      private var _isSsoUser:Boolean;
      
      public function OptionsDetailViewVo(param1:Object)
      {
         super();
         this._optionsList = param1.list;
         this._isSsoUser = param1.sso;
      }
      
      public function get optionsList() : Array
      {
         return this._optionsList;
      }
      
      public function set optionsList(param1:Array) : void
      {
         this._optionsList = param1;
      }
      
      public function get isSsoUser() : Boolean
      {
         return this._isSsoUser;
      }
   }
}


package net.bigpoint.cityrama.model.detailViews.vo
{
   public class OptionsDetailViewVo
   {
      
      private var _optionsList:Array;
      
      private var _isSsoUser:Boolean;
      
      public function OptionsDetailViewVo(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr0034);
            }
            §§goto(addr0042);
         }
         addr0034:
         this._optionsList = param1.list;
         if(_loc3_)
         {
            addr0042:
            this._isSsoUser = param1.sso;
         }
      }
      
      public function get optionsList() : Array
      {
         return this._optionsList;
      }
      
      public function set optionsList(param1:Array) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._optionsList = param1;
         }
      }
      
      public function get isSsoUser() : Boolean
      {
         return this._isSsoUser;
      }
   }
}


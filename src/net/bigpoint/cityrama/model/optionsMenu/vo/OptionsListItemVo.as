package net.bigpoint.cityrama.model.optionsMenu.vo
{
   public class OptionsListItemVo
   {
      
      private var _locaID:String;
      
      private var _isSelected:Boolean;
      
      public function OptionsListItemVo(param1:String, param2:Boolean)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super();
            if(!_loc4_)
            {
               this._locaID = param1;
               if(!(_loc4_ && param2))
               {
                  addr0041:
                  this._isSelected = param2;
               }
               return;
            }
         }
         §§goto(addr0041);
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._isSelected = param1;
         }
      }
      
      public function get locaID() : String
      {
         return this._locaID;
      }
      
      public function set locaID(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._locaID = param1;
         }
      }
   }
}


package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentDetailVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   
   public class ResidentSelectionVo
   {
      
      private var _residential:ResidentialFieldObject;
      
      private var _residents:Vector.<ResidentDetailVo>;
      
      private var _isSwap:Boolean = false;
      
      private var _currentResidents:String;
      
      public function ResidentSelectionVo(param1:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || param1)
         {
            super();
            if(_loc3_ || Boolean(this))
            {
               this._isSwap = param1;
            }
         }
      }
      
      public function get residents() : Vector.<ResidentDetailVo>
      {
         return this._residents;
      }
      
      public function set residents(param1:Vector.<ResidentDetailVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._residents = param1;
         }
      }
      
      public function get residential() : ResidentialFieldObject
      {
         return this._residential;
      }
      
      public function set residential(param1:ResidentialFieldObject) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._residential = param1;
         }
      }
      
      public function get isSwap() : Boolean
      {
         return this._isSwap;
      }
      
      public function get currentResidents() : String
      {
         return this._currentResidents;
      }
      
      public function set currentResidents(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._currentResidents = param1;
         }
      }
   }
}


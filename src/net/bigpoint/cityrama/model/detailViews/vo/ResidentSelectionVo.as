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
         super();
         this._isSwap = param1;
      }
      
      public function get residents() : Vector.<ResidentDetailVo>
      {
         return this._residents;
      }
      
      public function set residents(param1:Vector.<ResidentDetailVo>) : void
      {
         this._residents = param1;
      }
      
      public function get residential() : ResidentialFieldObject
      {
         return this._residential;
      }
      
      public function set residential(param1:ResidentialFieldObject) : void
      {
         this._residential = param1;
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
         this._currentResidents = param1;
      }
   }
}


package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   
   public class ImprovementIconComponentVo
   {
      
      private const STATE_EMPTY:String = "empty";
      
      private const STATE_LOCKED:String = "locked";
      
      private const STATE_COMMON:String = "common";
      
      private const STATE_RARE:String = "rare";
      
      private const STATE_EPIC:String = "epic";
      
      private const STATE_LEGENDARY:String = "legendary";
      
      private const STATE_EXPIRED:String = "Expired";
      
      private var _listOfImprovements:Vector.<ImprovementVo>;
      
      private var _numFreeSlots:int;
      
      private var _enabled:Boolean;
      
      private var _currentTimeStamp:Number;
      
      public function ImprovementIconComponentVo()
      {
         super();
         this._enabled = false;
      }
      
      public function get getIcon1() : String
      {
         return this.getIconSlotState(1);
      }
      
      public function get getIcon2() : String
      {
         return this.getIconSlotState(2);
      }
      
      public function get getIcon3() : String
      {
         return this.getIconSlotState(3);
      }
      
      public function set listOfImprovements(param1:Vector.<ImprovementVo>) : void
      {
         this._listOfImprovements = param1;
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this._enabled = param1;
      }
      
      private function getIconSlotState(param1:int) : String
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this._listOfImprovements.length)
         {
            if(this._listOfImprovements[_loc3_].currentSlotId == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         if(_loc2_ != -1)
         {
            _loc4_ = this._listOfImprovements[_loc2_].config.lifetime != -1 && this._currentTimeStamp > this._listOfImprovements[_loc2_].expirationTime ? this.STATE_EXPIRED : "";
            _loc5_ = this.getStateIdentifier(this._listOfImprovements[_loc2_].config.quality);
            return _loc5_ + _loc4_;
         }
         _loc6_ = this._listOfImprovements.length + this._numFreeSlots;
         if(param1 - 1 < _loc6_)
         {
            return this.STATE_EMPTY;
         }
         return this.STATE_LOCKED;
      }
      
      private function getStateIdentifier(param1:String) : String
      {
         switch(param1)
         {
            case ServerImprovementConstants.QUALITY_COMMON:
               return this.STATE_COMMON;
            case ServerImprovementConstants.QUALITY_RARE:
               return this.STATE_RARE;
            case ServerImprovementConstants.QUALITY_EPIC:
               return this.STATE_EPIC;
            case ServerImprovementConstants.QUALITY_LEGENDARY:
               return this.STATE_LEGENDARY;
            default:
               return "";
         }
      }
      
      public function set numFreeSlots(param1:int) : void
      {
         this._numFreeSlots = param1;
      }
      
      public function set currentTimeStamp(param1:Number) : void
      {
         this._currentTimeStamp = param1;
      }
   }
}


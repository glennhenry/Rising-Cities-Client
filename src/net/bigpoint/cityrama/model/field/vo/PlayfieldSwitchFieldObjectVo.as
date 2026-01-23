package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   
   public class PlayfieldSwitchFieldObjectVo extends ClientFieldObjectVo implements IIcondataVo
   {
      
      public static const STATE_BLOCKED:String = "STATE_BLOCKED";
      
      public static const STATE_IN_PROGRESS:String = "STATE_IN_PROGRESS";
      
      public static const STATE_DONE:String = "STATE_DONE";
      
      private var _currentPlayfieldId:Number;
      
      private var _targetPlayfieldId:uint;
      
      private var _questIdentifier:String;
      
      private var _enabledFeatureType:String;
      
      private var _currentMode:String;
      
      private var _userInteractionLocked:Boolean;
      
      private var _hideIconsForMoveMode:Boolean;
      
      private var _state:String;
      
      public function PlayfieldSwitchFieldObjectVo()
      {
         super();
         this._enabledFeatureType = "";
         this._questIdentifier = "";
      }
      
      public function get currentPlayfieldId() : Number
      {
         return this._currentPlayfieldId;
      }
      
      public function set currentPlayfieldId(param1:Number) : void
      {
         this._currentPlayfieldId = param1;
      }
      
      public function get targetPlayfieldId() : uint
      {
         return this._targetPlayfieldId;
      }
      
      public function set targetPlayfieldId(param1:uint) : void
      {
         this._targetPlayfieldId = param1;
      }
      
      public function get questIdentifier() : String
      {
         return this._questIdentifier;
      }
      
      public function set questIdentifier(param1:String) : void
      {
         this._questIdentifier = param1;
      }
      
      public function get enabledFeatureType() : String
      {
         return this._enabledFeatureType;
      }
      
      public function set enabledFeatureType(param1:String) : void
      {
         this._enabledFeatureType = param1;
      }
      
      public function get currentMode() : String
      {
         return this._currentMode;
      }
      
      public function set currentMode(param1:String) : void
      {
         this._currentMode = param1;
      }
      
      public function get hideIconsForMoveMode() : Boolean
      {
         return this._hideIconsForMoveMode;
      }
      
      public function get useIcons() : Boolean
      {
         return true;
      }
      
      public function get userInteractionLocked() : Boolean
      {
         return this._userInteractionLocked;
      }
      
      public function set userInteractionLocked(param1:Boolean) : void
      {
         this._userInteractionLocked = param1;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
      }
      
      override public function get assetFrame() : String
      {
         var _loc1_:String = HorizionSettingsVo.playfieldIdToGfxId(this.currentPlayfieldId) + "_to_" + HorizionSettingsVo.playfieldIdToGfxId(this.targetPlayfieldId);
         switch(this.state)
         {
            case PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS:
               return _loc1_ + "_inProgress";
            case PlayfieldSwitchFieldObjectVo.STATE_BLOCKED:
               return _loc1_ + "_blocked";
            default:
            case PlayfieldSwitchFieldObjectVo.STATE_DONE:
               return _loc1_;
         }
      }
      
      public function set hideIconsForMoveMode(param1:Boolean) : void
      {
         this._hideIconsForMoveMode = param1;
      }
   }
}


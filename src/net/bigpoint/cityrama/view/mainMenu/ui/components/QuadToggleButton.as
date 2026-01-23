package net.bigpoint.cityrama.view.mainMenu.ui.components
{
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.mainMenu.ui.events.QuadButtonEvent;
   import spark.components.ToggleButton;
   
   public class QuadToggleButton extends ToggleButton
   {
      
      private static var _skinParts:Object = {
         "labelDisplay":false,
         "iconDisplay":false,
         "badgeImage":false
      };
      
      private var _inactive:Boolean;
      
      private var _blinking:Boolean;
      
      private var _dispatchChangeFlag:Boolean = true;
      
      public var badgeImage:BriskImageDynaLib;
      
      public function QuadToggleButton()
      {
         super();
         focusEnabled = false;
      }
      
      public function get inactive() : Boolean
      {
         return this._inactive;
      }
      
      public function set inactive(param1:Boolean) : void
      {
         if(param1 != this._inactive)
         {
            this._inactive = param1;
            invalidateSkinState();
         }
      }
      
      public function get blinking() : Boolean
      {
         return this._blinking;
      }
      
      public function set blinking(param1:Boolean) : void
      {
         if(param1 != this._blinking)
         {
            this._blinking = param1;
            invalidateSkinState();
         }
      }
      
      override public function set selected(param1:Boolean) : void
      {
         if(super.selected != param1)
         {
            super.selected = param1;
         }
      }
      
      override protected function getCurrentSkinState() : String
      {
         var _loc1_:String = super.getCurrentSkinState();
         _loc1_ = _loc1_.split("And").shift();
         var _loc2_:* = super.getCurrentSkinState();
         if(this._blinking && Boolean(enabled))
         {
            _loc2_ = _loc1_ + "AndBlinking";
         }
         if(this._inactive && Boolean(enabled))
         {
            _loc2_ = _loc1_ + "AndInactive";
         }
         return _loc2_;
      }
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(!param1)
         {
            if(this._dispatchChangeFlag)
            {
               dispatchEvent(new QuadButtonEvent(QuadButtonEvent.SELECTION_CHANGED));
            }
            else
            {
               this._dispatchChangeFlag = true;
            }
         }
         else
         {
            _loc4_ = param1.split("And").length > 1 ? param1.split("And").pop() : "normal";
            _loc5_ = param2.split("And").length > 1 ? param2.split("And").pop() : "normal";
            if(param2 == "downAndInactive")
            {
               dispatchEvent(new QuadButtonEvent(QuadButtonEvent.SELECTION_CHANGED));
            }
            if(_loc4_ != _loc5_)
            {
               if(this._dispatchChangeFlag)
               {
                  dispatchEvent(new QuadButtonEvent(QuadButtonEvent.SELECTION_CHANGED));
               }
               else
               {
                  this._dispatchChangeFlag = true;
               }
            }
         }
         super.stateChanged(param1,param2,param3);
      }
      
      public function set showBadge(param1:Boolean) : void
      {
         if(this.badgeImage)
         {
            this.badgeImage.visible = this.badgeImage.includeInLayout = param1;
         }
      }
      
      public function get showBadge() : Boolean
      {
         if(this.badgeImage)
         {
            return this.badgeImage.visible;
         }
         return false;
      }
      
      public function get dispatchChangeFlag() : Boolean
      {
         return this._dispatchChangeFlag;
      }
      
      public function set dispatchChangeFlag(param1:Boolean) : void
      {
         this._dispatchChangeFlag = param1;
      }
   }
}


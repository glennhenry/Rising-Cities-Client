package net.bigpoint.cityrama.view.common.components
{
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import mx.core.FlexGlobals;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.view.common.skins.MultiStateMiniButtonSkin;
   import net.bigpoint.cityrama.view.common.skins.MultistateSmallButtonSkin;
   
   public class MultistateButton extends ConfirmablePlusButton
   {
      
      private static var _skinParts:Object = {
         "iconLeft":true,
         "iconRight":true,
         "sparkle":false,
         "plusIcon":false,
         "labelDisplay":false,
         "iconDisplay":false
      };
      
      public var iconLeft:BriskImageDynaLib;
      
      public var iconRight:BriskImageDynaLib;
      
      public var sparkle:BriskImageDynaLib;
      
      private var _libNameLeft:String;
      
      private var _libNameRight:String;
      
      private var _imageNameLeft:String;
      
      private var _imageNameRight:String;
      
      private var _showSparkle:Boolean = false;
      
      private var _useSmallSkin:Boolean = false;
      
      private var _useMiniSkin:Boolean = false;
      
      public function MultistateButton()
      {
         super();
         this.focusEnabled = false;
      }
      
      public function get imageNameLeft() : String
      {
         return this._imageNameLeft;
      }
      
      public function set imageNameLeft(param1:String) : void
      {
         this._imageNameLeft = param1;
         invalidateProperties();
      }
      
      public function get libNameLeft() : String
      {
         return this._libNameLeft;
      }
      
      public function set libNameLeft(param1:String) : void
      {
         this._libNameLeft = param1;
         invalidateProperties();
      }
      
      public function get imageNameRight() : String
      {
         return this._imageNameRight;
      }
      
      public function set imageNameRight(param1:String) : void
      {
         this._imageNameRight = param1;
         invalidateProperties();
      }
      
      public function get libNameRight() : String
      {
         return this._libNameRight;
      }
      
      public function set libNameRight(param1:String) : void
      {
         this._libNameRight = param1;
      }
      
      override public function set label(param1:String) : void
      {
         super.label = param1;
         invalidateProperties();
      }
      
      override public function styleChanged(param1:String) : void
      {
         super.styleChanged(param1);
         if(this.useSmallSkin)
         {
            setStyle("skinClass",MultistateSmallButtonSkin);
         }
         else if(this.useMiniSkin)
         {
            setStyle("skinClass",MultiStateMiniButtonSkin);
         }
      }
      
      override protected function commitProperties() : void
      {
         this.emphasized = false;
         super.commitProperties();
         if(this.iconLeft)
         {
            if(Boolean(this._libNameLeft) && Boolean(this._imageNameLeft))
            {
               this.iconLeft.includeInLayout = this.iconLeft.visible = true;
               this.iconLeft.dynaLibName = this._libNameLeft;
               this.iconLeft.dynaBmpSourceName = this._imageNameLeft;
            }
            else
            {
               this.iconLeft.includeInLayout = this.iconLeft.visible = false;
            }
         }
         if(this.iconRight)
         {
            if(Boolean(this._libNameRight) && Boolean(this._imageNameRight))
            {
               this.iconRight.includeInLayout = this.iconRight.visible = true;
               this.iconRight.dynaLibName = this._libNameRight;
               this.iconRight.dynaBmpSourceName = this._imageNameRight;
            }
            else
            {
               this.iconRight.includeInLayout = this.iconRight.visible = false;
            }
         }
         if(label != "")
         {
            if(labelDisplay)
            {
               UIComponent(labelDisplay).includeInLayout = true;
               UIComponent(labelDisplay).visible = true;
            }
         }
         else if(labelDisplay)
         {
            UIComponent(labelDisplay).includeInLayout = false;
            UIComponent(labelDisplay).visible = false;
         }
         if(plusIcon)
         {
            plusIcon.includeInLayout = plusIcon.visible = showPlus;
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.iconLeft)
         {
            if(Boolean(this._libNameLeft) && Boolean(this._imageNameLeft))
            {
               this.iconLeft.includeInLayout = true;
               this.iconLeft.visible = true;
               this.iconLeft.dynaLibName = this._libNameLeft;
               this.iconLeft.dynaBmpSourceName = this._imageNameLeft;
            }
         }
         else if(param2 == labelDisplay)
         {
            if(label != "")
            {
               UIComponent(labelDisplay).includeInLayout = true;
               UIComponent(labelDisplay).visible = true;
            }
            else
            {
               UIComponent(labelDisplay).includeInLayout = false;
               UIComponent(labelDisplay).visible = false;
            }
         }
         else if(param2 == this.sparkle)
         {
            if(this._showSparkle)
            {
               this.sparkle.visible = true;
               this.sparkle.includeInLayout = true;
            }
            else
            {
               this.sparkle.visible = false;
               this.sparkle.includeInLayout = false;
            }
         }
      }
      
      public function get showSparkle() : Boolean
      {
         return this._showSparkle && !_showPlus;
      }
      
      public function set showSparkle(param1:Boolean) : void
      {
         this._showSparkle = param1;
         invalidateProperties();
      }
      
      public function get useSmallSkin() : Boolean
      {
         return this._useSmallSkin;
      }
      
      public function set useSmallSkin(param1:Boolean) : void
      {
         this._useSmallSkin = param1;
      }
      
      public function get useMiniSkin() : Boolean
      {
         return this._useMiniSkin;
      }
      
      public function set useMiniSkin(param1:Boolean) : void
      {
         this._useMiniSkin = param1;
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         var _loc2_:Stage = null;
         if(param1.keyCode == Keyboard.SPACE)
         {
            this.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDownHandler);
            this.removeEventListener(KeyboardEvent.KEY_UP,keyUpHandler);
            _loc2_ = FlexGlobals.topLevelApplication.stage as Stage;
            _loc2_.focus = null;
            _loc2_.dispatchEvent(param1);
            return;
         }
         super.keyDownHandler(param1);
      }
      
      override public function set showPlus(param1:Boolean) : void
      {
         super.showPlus = param1;
         skin.invalidateProperties();
      }
   }
}


package net.bigpoint.cityrama.view.common.components
{
   import mx.events.PropertyChangeEvent;
   
   public class DynamicPlusButton extends ConfirmablePlusButton
   {
      
      private static var _skinParts:Object = {
         "sparkle":false,
         "plusIcon":false,
         "labelDisplay":false,
         "iconDisplay":false,
         "iconAsset":true
      };
      
      public var iconAsset:BriskImageDynaLib;
      
      public var sparkle:BriskImageDynaLib;
      
      private var _iconLibName:String;
      
      private var _iconImageName:String;
      
      private var _showSparkle:Boolean = false;
      
      private var _inactive:Boolean;
      
      public function DynamicPlusButton()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImageName() : String
      {
         return this._iconImageName;
      }
      
      private function set _1757393395iconImageName(param1:String) : void
      {
         if(param1 != this._iconImageName)
         {
            this._iconImageName = param1;
            if(this.iconAsset)
            {
               this.iconAsset.dynaBmpSourceName = this._iconImageName;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconLibName() : String
      {
         return this._iconLibName;
      }
      
      private function set _474884105iconLibName(param1:String) : void
      {
         if(param1 != this._iconLibName)
         {
            this._iconLibName = param1;
            if(this.iconAsset)
            {
               this.iconAsset.dynaLibName = this._iconLibName;
            }
         }
      }
      
      public function get showSparkle() : Boolean
      {
         return this._showSparkle;
      }
      
      public function set showSparkle(param1:Boolean) : void
      {
         this._showSparkle = param1;
         if(this.sparkle)
         {
            this.sparkle.visible = param1;
            this.sparkle.includeInLayout = param1;
            invalidateDisplayList();
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == plusIcon)
         {
            plusIcon.visible = _showPlus;
            plusIcon.includeInLayout = _showPlus;
         }
         else if(param2 == this.iconAsset)
         {
            this.iconAsset.dynaBmpSourceName = this._iconImageName;
            this.iconAsset.dynaLibName = this._iconLibName;
         }
         else if(param2 == this.sparkle)
         {
            this.sparkle.visible = this._showSparkle;
            this.sparkle.includeInLayout = this._showSparkle;
         }
      }
      
      public function set inactive(param1:Boolean) : void
      {
         this._inactive = param1;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(plusIcon)
         {
            plusIcon.visible = _showPlus;
            plusIcon.includeInLayout = _showPlus;
         }
         else if(this.iconAsset)
         {
            this.iconAsset.dynaBmpSourceName = this._iconImageName;
            this.iconAsset.dynaLibName = this._iconLibName;
         }
         else if(this.sparkle)
         {
            this.sparkle.visible = this._showSparkle;
            this.sparkle.includeInLayout = this._showSparkle;
         }
      }
      
      public function get inactive() : Boolean
      {
         return this._inactive;
      }
      
      public function set iconLibName(param1:String) : void
      {
         var _loc2_:Object = this.iconLibName;
         if(_loc2_ !== param1)
         {
            this._474884105iconLibName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconLibName",_loc2_,param1));
            }
         }
      }
      
      public function set iconImageName(param1:String) : void
      {
         var _loc2_:Object = this.iconImageName;
         if(_loc2_ !== param1)
         {
            this._1757393395iconImageName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImageName",_loc2_,param1));
            }
         }
      }
   }
}


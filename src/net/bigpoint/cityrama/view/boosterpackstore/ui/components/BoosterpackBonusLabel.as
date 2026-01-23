package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   
   public class BoosterpackBonusLabel extends Group
   {
      
      private var _102727412label:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function BoosterpackBonusLabel()
      {
         super();
         mx_internal::_document = this;
         this.width = 112;
         this.height = 30;
         this.horizontalCenter = 0;
         this.verticalCenter = 0;
         this.mxmlContent = [this._BoosterpackBonusLabel_LocaLabel1_i()];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function set bonusFactor(param1:Number) : void
      {
         this.label.text = "x " + param1;
      }
      
      public function set index(param1:Number) : void
      {
         this.x = this.getPosXByIndex(param1);
         this.y = this.getPosYByIndex(param1);
      }
      
      public function getPosXByIndex(param1:Number) : Number
      {
         return param1 % 4 * 120;
      }
      
      public function getPosYByIndex(param1:Number) : Number
      {
         return 192 + int(param1 / 4) * 160;
      }
      
      public function set labelStyle(param1:Object) : void
      {
         this.label.styleName = param1;
      }
      
      public function set labelOutlineColour(param1:uint) : void
      {
         this.label.outlineColor = param1;
      }
      
      public function set labelOutlineAlpha(param1:Number) : void
      {
         this.label.outlineAlpha = param1;
      }
      
      private function _BoosterpackBonusLabel_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "poosterpackBonusLabel";
         _loc1_.useOutline = true;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "label";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.label = _loc1_;
         BindingManager.executeBindings(this,"label",this.label);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get label() : LocaLabel
      {
         return this._102727412label;
      }
      
      public function set label(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._102727412label;
         if(_loc2_ !== param1)
         {
            this._102727412label = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label",_loc2_,param1));
            }
         }
      }
   }
}


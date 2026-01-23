package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.ItemRenderer;
   
   public class NeedItemRendered extends ItemRenderer
   {
      
      private var _1399907075component:NeedItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _needData:*;
      
      private var _dataIsDirty:Boolean;
      
      public function NeedItemRendered()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.mouseChildren = false;
         this.mouseEnabled = true;
         this.mxmlContent = [this._NeedItemRendered_NeedItemComponent1_i()];
         this.addEventListener("creationComplete",this.___NeedItemRendered_ItemRenderer1_creationComplete);
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(param1,this._needData))
         {
            this._dataIsDirty = true;
            this._needData = param1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ResidentialNeedVo = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            _loc1_ = this._needData as ResidentialNeedVo;
            if(_loc1_)
            {
               if(!_loc1_.locked)
               {
                  if(_loc1_.available)
                  {
                     this.component.styleName = "active";
                  }
                  else
                  {
                     this.component.styleName = "inActive";
                  }
               }
               else
               {
                  this.component.styleName = "locked";
               }
               this.component.data = _loc1_;
               this.setTooltips(_loc1_);
            }
         }
      }
      
      private function setTooltips(param1:ResidentialNeedVo) : void
      {
         if(param1.locked)
         {
            this.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.need.locked")),param1.levelToUnlock);
         }
         else
         {
            this.toolTip = param1.tooltip;
         }
      }
      
      private function _NeedItemRendered_NeedItemComponent1_i() : NeedItemComponent
      {
         var _loc1_:NeedItemComponent = new NeedItemComponent();
         _loc1_.id = "component";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.component = _loc1_;
         BindingManager.executeBindings(this,"component",this.component);
         return _loc1_;
      }
      
      public function ___NeedItemRendered_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get component() : NeedItemComponent
      {
         return this._1399907075component;
      }
      
      public function set component(param1:NeedItemComponent) : void
      {
         var _loc2_:Object = this._1399907075component;
         if(_loc2_ !== param1)
         {
            this._1399907075component = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"component",_loc2_,param1));
            }
         }
      }
   }
}


package net.bigpoint.cityrama.view.optionsmenu.ui.components
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.vo.OptionsListItemVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.CheckBox;
   import spark.components.supportClasses.ItemRenderer;
   
   public class OptionsItemRenderer extends ItemRenderer
   {
      
      public static const EVENT_ITEM_SELECTION_CHANGED:String = "EVENT_ITEM_SELECTION_CHANGED";
      
      public static const EVENT_EDIT_ACCOUNT:String = "EVENT_EDIT_ACCOUNT";
      
      private var _1536861091checkBox:CheckBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function OptionsItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.minHeight = 38;
         this.height = 38;
         this.mxmlContent = [this._OptionsItemRenderer_CheckBox1_i()];
         this.addEventListener("creationComplete",this.___OptionsItemRenderer_ItemRenderer1_creationComplete);
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
         this.checkBox.selected = OptionsListItemVo(param1).isSelected;
         this.setOptionsListText(OptionsListItemVo(param1).locaID);
      }
      
      private function setOptionsListText(param1:String) : void
      {
         switch(param1)
         {
            case OptionsMenuNavigationConstants.OPTIONS_LIST_SPARSE_TRAFFIC:
               this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_SPARSE_TRAFFIC);
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS:
               this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS);
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS:
               this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS);
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS:
               this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS);
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION:
               this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION);
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION:
               this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION);
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE:
               this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE);
         }
      }
      
      private function handleChange(param1:Event) : void
      {
         dispatchEvent(new Event(EVENT_ITEM_SELECTION_CHANGED,true));
      }
      
      private function _OptionsItemRenderer_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.styleName = "optionsBox";
         _loc1_.width = 200;
         _loc1_.addEventListener("change",this.__checkBox_change);
         _loc1_.id = "checkBox";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkBox = _loc1_;
         BindingManager.executeBindings(this,"checkBox",this.checkBox);
         return _loc1_;
      }
      
      public function __checkBox_change(param1:Event) : void
      {
         this.handleChange(param1);
      }
      
      public function ___OptionsItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get checkBox() : CheckBox
      {
         return this._1536861091checkBox;
      }
      
      public function set checkBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1536861091checkBox;
         if(_loc2_ !== param1)
         {
            this._1536861091checkBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkBox",_loc2_,param1));
            }
         }
      }
   }
}


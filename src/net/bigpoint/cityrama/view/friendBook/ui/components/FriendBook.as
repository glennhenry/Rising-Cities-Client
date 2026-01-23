package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.FriendTabBarSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.TabBar;
   import spark.events.IndexChangeEvent;
   
   public class FriendBook extends PaperPopupWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      private var _951530617content:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _tabs:ArrayCollection;
      
      private var _tabsIsDirty:Boolean;
      
      public var tabEventEnabled:Boolean = true;
      
      public function FriendBook()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "friendBook";
         this.showBackButton = false;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FriendBook_Array1_c);
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
      
      public function set tabs(param1:ArrayCollection) : void
      {
         if(!RandomUtilities.isEqual(param1,this._tabs))
         {
            this._tabsIsDirty = true;
            this._tabs = param1;
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._tabsIsDirty && Boolean(this._tabs))
         {
            this._tabsIsDirty = false;
            tabBar.dataProvider = this._tabs;
            if(this.tabEventEnabled)
            {
               dispatchEvent(new IndexChangeEvent(IndexChangeEvent.CHANGE));
            }
         }
      }
      
      private function handleIndexChange(param1:IndexChangeEvent) : void
      {
         if(this.tabEventEnabled)
         {
            dispatchEvent(param1);
         }
      }
      
      private function _FriendBook_Array1_c() : Array
      {
         return [this._FriendBook_TabBar1_i(),this._FriendBook_Group1_i()];
      }
      
      private function _FriendBook_TabBar1_i() : TabBar
      {
         var _loc1_:TabBar = new TabBar();
         _loc1_.requireSelection = true;
         _loc1_.percentWidth = 100;
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.setStyle("skinClass",FriendTabBarSkin);
         _loc1_.addEventListener("change",this.__tabBar_change);
         _loc1_.id = "tabBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         tabBar = _loc1_;
         BindingManager.executeBindings(this,"tabBar",tabBar);
         return _loc1_;
      }
      
      public function __tabBar_change(param1:IndexChangeEvent) : void
      {
         this.handleIndexChange(param1);
      }
      
      private function _FriendBook_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 30;
         _loc1_.right = 30;
         _loc1_.top = 60;
         _loc1_.bottom = 20;
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : Group
      {
         return this._951530617content;
      }
      
      public function set content(param1:Group) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
            }
         }
      }
   }
}


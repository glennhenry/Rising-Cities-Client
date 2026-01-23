package net.bigpoint.cityrama.view.quest.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.view.quest.ui.skin.QuestSideListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.List;
   
   public class QuestSideMenu extends Group implements IStateClient2
   {
      
      private var _1526896411elementContainer:Group;
      
      private var _1177280081itemList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:Vector.<QuestDetailViewVo>;
      
      private var _dataIsDirty:Boolean;
      
      public function QuestSideMenu()
      {
         super();
         mx_internal::_document = this;
         this.minWidth = 70;
         this.minHeight = 268;
         this.mxmlContent = [this._QuestSideMenu_List1_i(),this._QuestSideMenu_Group2_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
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
      
      public function set data(param1:Vector.<QuestDetailViewVo>) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data) && param1.length > 0)
         {
            this._dataIsDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:QuestDetailViewVo = null;
         var _loc3_:ArrayCollection = null;
         var _loc4_:QuestDetailViewVo = null;
         var _loc5_:QuestDetailViewVo = null;
         var _loc6_:Vector.<Number> = null;
         var _loc7_:int = 0;
         var _loc8_:ArrayCollection = null;
         var _loc9_:int = 0;
         var _loc10_:QuestDetailViewVo = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            _loc1_ = false;
            for each(_loc2_ in this._data)
            {
               if(_loc2_.isQuestComplete && _loc2_.changed)
               {
                  _loc1_ = true;
                  break;
               }
            }
            if(!this.itemList.dataProvider || _loc1_)
            {
               this._data.sort(this.sortOnLastUpdate);
               _loc3_ = new ArrayCollection();
               for each(_loc4_ in this._data)
               {
                  _loc3_.addItem(_loc4_);
               }
               this.itemList.dataProvider = _loc3_;
            }
            else
            {
               for each(_loc5_ in this._data)
               {
                  _loc7_ = -1;
                  _loc8_ = this.itemList.dataProvider as ArrayCollection;
                  _loc9_ = 0;
                  while(_loc9_ < _loc8_.length)
                  {
                     _loc10_ = _loc8_.getItemAt(_loc9_) as QuestDetailViewVo;
                     if(_loc10_.questID == _loc5_.questID)
                     {
                        _loc7_ = _loc9_;
                     }
                     _loc9_++;
                  }
                  if(_loc7_ == -1)
                  {
                     this.itemList.dataProvider.addItemAt(_loc5_,0);
                  }
                  else
                  {
                     this.itemList.dataProvider.setItemAt(_loc5_,_loc7_);
                  }
               }
               _loc8_ = this.itemList.dataProvider as ArrayCollection;
               _loc6_ = new Vector.<Number>();
               _loc9_ = 0;
               while(_loc9_ < _loc8_.length)
               {
                  _loc10_ = _loc8_.getItemAt(_loc9_) as QuestDetailViewVo;
                  _loc7_ = -1;
                  for each(_loc5_ in this._data)
                  {
                     if(_loc10_.questID == _loc5_.questID)
                     {
                        _loc7_ = _loc9_;
                     }
                  }
                  if(_loc7_ == -1)
                  {
                     _loc6_.push(_loc10_.questID);
                  }
                  _loc9_++;
               }
               while(_loc6_.length)
               {
                  _loc9_ = 0;
                  while(_loc9_ < this.itemList.dataProvider.length)
                  {
                     _loc10_ = this.itemList.dataProvider.getItemAt(_loc9_) as QuestDetailViewVo;
                     if(_loc10_.questID == _loc6_[0])
                     {
                        this.itemList.dataProvider.removeItemAt(_loc9_);
                        break;
                     }
                     _loc9_++;
                  }
                  _loc6_.shift();
               }
            }
         }
      }
      
      private function sortOnLastUpdate(param1:QuestDetailViewVo, param2:QuestDetailViewVo) : int
      {
         if(param1.lastUpdated > param2.lastUpdated)
         {
            return -1;
         }
         if(param1.lastUpdated < param2.lastUpdated)
         {
            return 1;
         }
         return 0;
      }
      
      private function _QuestSideMenu_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.styleName = "sideMenu";
         _loc1_.itemRenderer = this._QuestSideMenu_ClassFactory1_c();
         _loc1_.setStyle("skinClass",QuestSideListSkin);
         _loc1_.id = "itemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemList = _loc1_;
         BindingManager.executeBindings(this,"itemList",this.itemList);
         return _loc1_;
      }
      
      private function _QuestSideMenu_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = QuestSideItemRenderer;
         return _loc1_;
      }
      
      private function _QuestSideMenu_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 16;
         _loc1_.left = 70;
         _loc1_.id = "elementContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.elementContainer = _loc1_;
         BindingManager.executeBindings(this,"elementContainer",this.elementContainer);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get elementContainer() : Group
      {
         return this._1526896411elementContainer;
      }
      
      public function set elementContainer(param1:Group) : void
      {
         var _loc2_:Object = this._1526896411elementContainer;
         if(_loc2_ !== param1)
         {
            this._1526896411elementContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elementContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _loc2_:Object = this._1177280081itemList;
         if(_loc2_ !== param1)
         {
            this._1177280081itemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
            }
         }
      }
   }
}


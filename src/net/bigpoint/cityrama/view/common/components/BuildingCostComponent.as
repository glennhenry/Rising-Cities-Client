package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.ArchitectImageValueItemRenderer;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectImageValueSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class BuildingCostComponent extends Group implements IStateClient2
   {
      
      private var _1515913739_BuildingCostComponent_Group2:Group;
      
      private var _89636871_BuildingCostComponent_HGroup2:HGroup;
      
      private var _450449222costHeader:PostitHeaderComponent;
      
      private var _288049369costLabel:LocaLabel;
      
      private var _424925685costList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayList;
      
      private var _dataDirty:Boolean;
      
      public function BuildingCostComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  this.mxmlContent = [this._BuildingCostComponent_StickyNoteComponent1_c()];
                  if(_loc2_ || _loc1_)
                  {
                     addr0050:
                     this.currentState = "hasCosts";
                     if(!_loc1_)
                     {
                        this.addEventListener("creationComplete",this.___BuildingCostComponent_Group1_creationComplete);
                        if(_loc2_ || _loc2_)
                        {
                           states = [new State({
                              "name":"hasCosts",
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"_BuildingCostComponent_Group2",
                                 "name":"visible",
                                 "value":false
                              }),new SetProperty().initializeFromObject({
                                 "target":"_BuildingCostComponent_Group2",
                                 "name":"includeInLayout",
                                 "value":false
                              }),new SetProperty().initializeFromObject({
                                 "target":"_BuildingCostComponent_HGroup2",
                                 "name":"visible",
                                 "value":true
                              }),new SetProperty().initializeFromObject({
                                 "target":"_BuildingCostComponent_HGroup2",
                                 "name":"includeInLayout",
                                 "value":true
                              })]
                           }),new State({
                              "name":"noCosts",
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"_BuildingCostComponent_Group2",
                                 "name":"visible",
                                 "value":true
                              }),new SetProperty().initializeFromObject({
                                 "target":"_BuildingCostComponent_Group2",
                                 "name":"includeInLayout",
                                 "value":true
                              }),new SetProperty().initializeFromObject({
                                 "target":"_BuildingCostComponent_HGroup2",
                                 "name":"visible",
                                 "value":false
                              }),new SetProperty().initializeFromObject({
                                 "target":"_BuildingCostComponent_HGroup2",
                                 "name":"includeInLayout",
                                 "value":false
                              })]
                           })];
                           addr0075:
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr0050);
         }
         §§goto(addr0075);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr004a:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr004a);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      public function setData(param1:ArrayList) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._data = param1;
            if(_loc3_)
            {
               this._dataDirty = true;
               if(_loc3_)
               {
                  invalidateProperties();
               }
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(!_loc1_)
            {
               if(this._dataDirty)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0049:
                     this._dataDirty = false;
                     if(_loc2_ || _loc1_)
                     {
                        addr005b:
                        if(this._data)
                        {
                           if(!_loc1_)
                           {
                              this.costList.dataProvider = this._data;
                           }
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr005b);
               }
               §§goto(addr0073);
            }
            §§goto(addr0049);
         }
         addr0073:
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.costHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.price");
            if(_loc3_)
            {
               addr0044:
               this.costLabel.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.noAdditionalCost");
            }
            return;
         }
         §§goto(addr0044);
      }
      
      private function _BuildingCostComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.tapeTop = true;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr005b:
                     _loc1_.tapeBottom = true;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0078:
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._BuildingCostComponent_Array3_c);
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0099:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr0078);
               }
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _BuildingCostComponent_Array3_c() : Array
      {
         return [this._BuildingCostComponent_VGroup1_c()];
      }
      
      private function _BuildingCostComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               addr0032:
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._BuildingCostComponent_PostitHeaderComponent1_i(),this._BuildingCostComponent_Group2_i(),this._BuildingCostComponent_HGroup2_i()];
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0083);
                     }
                  }
               }
               §§goto(addr0097);
            }
            addr0083:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0097:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _BuildingCostComponent_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.id = "costHeader";
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0075);
                     }
                  }
                  §§goto(addr007f);
               }
            }
            addr0075:
            this.costHeader = _loc1_;
            if(!_loc3_)
            {
               addr007f:
               BindingManager.executeBindings(this,"costHeader",this.costHeader);
            }
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _BuildingCostComponent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._BuildingCostComponent_HGroup1_c()];
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.id = "_BuildingCostComponent_Group2";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0095:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr009e:
                                 this._BuildingCostComponent_Group2 = _loc1_;
                                 if(_loc3_)
                                 {
                                    BindingManager.executeBindings(this,"_BuildingCostComponent_Group2",this._BuildingCostComponent_Group2);
                                 }
                              }
                           }
                           §§goto(addr00b5);
                        }
                        §§goto(addr009e);
                     }
                  }
               }
               addr00b5:
               return _loc1_;
            }
            §§goto(addr0095);
         }
         §§goto(addr009e);
      }
      
      private function _BuildingCostComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.top = -5;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._BuildingCostComponent_BriskImageDynaLib1_c(),this._BuildingCostComponent_LocaLabel1_i()];
                     if(!_loc2_)
                     {
                        addr0073:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0087);
            }
            §§goto(addr0073);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _BuildingCostComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "noCosts_star";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr004e:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0052);
               }
               §§goto(addr004e);
            }
         }
         addr0052:
         return _loc1_;
      }
      
      private function _BuildingCostComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.maxWidth = 150;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.maxDisplayedLines = 2;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr005c:
                  _loc1_.styleName = "blueElevenCenter";
                  if(_loc3_)
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00a2);
            }
            §§goto(addr005c);
         }
         addr0067:
         _loc1_.id = "costLabel";
         if(_loc3_ || _loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0099);
               }
               §§goto(addr00b4);
            }
            §§goto(addr00a2);
         }
         addr0099:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr00a2:
            this.costLabel = _loc1_;
            if(!(_loc2_ && _loc2_))
            {
               addr00b4:
               BindingManager.executeBindings(this,"costLabel",this.costLabel);
            }
         }
         return _loc1_;
      }
      
      private function _BuildingCostComponent_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._BuildingCostComponent_List1_i()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "_BuildingCostComponent_HGroup2";
                  if(_loc3_)
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0093);
               }
               addr0061:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr0081);
                     }
                  }
                  §§goto(addr0093);
               }
               addr0081:
               this._BuildingCostComponent_HGroup2 = _loc1_;
               if(_loc3_ || Boolean(this))
               {
                  addr0093:
                  BindingManager.executeBindings(this,"_BuildingCostComponent_HGroup2",this._BuildingCostComponent_HGroup2);
               }
               return _loc1_;
            }
         }
         §§goto(addr0093);
      }
      
      private function _BuildingCostComponent_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.itemRenderer = this._BuildingCostComponent_ClassFactory1_c();
               if(!_loc2_)
               {
                  _loc1_.setStyle("skinClass",ArchitectImageValueSkin);
                  if(_loc3_)
                  {
                     _loc1_.id = "costList";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0064:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr007b:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr008c:
                                 this.costList = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr0096:
                                    BindingManager.executeBindings(this,"costList",this.costList);
                                 }
                                 §§goto(addr00a3);
                              }
                              §§goto(addr0096);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr008c);
                     }
                     addr00a3:
                     return _loc1_;
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0064);
            }
            §§goto(addr0096);
         }
         §§goto(addr008c);
      }
      
      private function _BuildingCostComponent_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.generator = ArchitectImageValueItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___BuildingCostComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _BuildingCostComponent_Group2() : Group
      {
         return this._1515913739_BuildingCostComponent_Group2;
      }
      
      public function set _BuildingCostComponent_Group2(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1515913739_BuildingCostComponent_Group2;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1515913739_BuildingCostComponent_Group2 = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_BuildingCostComponent_Group2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
         }
         addr0078:
      }
      
      [Bindable(event="propertyChange")]
      public function get _BuildingCostComponent_HGroup2() : HGroup
      {
         return this._89636871_BuildingCostComponent_HGroup2;
      }
      
      public function set _BuildingCostComponent_HGroup2(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._89636871_BuildingCostComponent_HGroup2;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0037:
                  this._89636871_BuildingCostComponent_HGroup2 = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_BuildingCostComponent_HGroup2",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get costHeader() : PostitHeaderComponent
      {
         return this._450449222costHeader;
      }
      
      public function set costHeader(param1:PostitHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._450449222costHeader;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._450449222costHeader = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0080:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0080);
            }
            addr008f:
            return;
         }
         §§goto(addr0080);
      }
      
      [Bindable(event="propertyChange")]
      public function get costLabel() : LocaLabel
      {
         return this._288049369costLabel;
      }
      
      public function set costLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._288049369costLabel;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._288049369costLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0081:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0081);
               }
            }
            addr0090:
            return;
         }
         §§goto(addr0081);
      }
      
      [Bindable(event="propertyChange")]
      public function get costList() : List
      {
         return this._424925685costList;
      }
      
      public function set costList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._424925685costList;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._424925685costList = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costList",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
         }
         addr007e:
      }
   }
}


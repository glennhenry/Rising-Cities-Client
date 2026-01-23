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
   import net.bigpoint.cityrama.view.architectBook.ui.components.ArchitectNeedItemRenderer;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectNeedsSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class BuildingConstructionStepsComponent extends Group implements IStateClient2
   {
      
      private var _1579675192_BuildingConstructionStepsComponent_Group2:Group;
      
      private var _1935639916materialHeader:PostitHeaderComponentMultiline;
      
      private var _1167242739materialLabel:LocaLabel;
      
      private var _2115854747materialList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayList;
      
      private var _dataDirty:Boolean;
      
      public function BuildingConstructionStepsComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(!_loc1_)
            {
               addr0026:
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  this.mxmlContent = [this._BuildingConstructionStepsComponent_StickyNoteComponent1_c()];
                  if(!_loc1_)
                  {
                     this.currentState = "hasSteps";
                     if(_loc2_)
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr006d);
                  }
               }
               addr005c:
               this.addEventListener("creationComplete",this.___BuildingConstructionStepsComponent_Group1_creationComplete);
               if(!_loc1_)
               {
                  states = [new State({
                     "name":"hasSteps",
                     "overrides":[new SetProperty().initializeFromObject({
                        "target":"_BuildingConstructionStepsComponent_Group2",
                        "name":"visible",
                        "value":false
                     }),new SetProperty().initializeFromObject({
                        "target":"_BuildingConstructionStepsComponent_Group2",
                        "name":"includeInLayout",
                        "value":false
                     }),new SetProperty().initializeFromObject({
                        "target":"materialList",
                        "name":"visible",
                        "value":true
                     }),new SetProperty().initializeFromObject({
                        "target":"materialList",
                        "name":"includeInLayout",
                        "value":true
                     })]
                  }),new State({
                     "name":"noSteps",
                     "overrides":[new SetProperty().initializeFromObject({
                        "target":"_BuildingConstructionStepsComponent_Group2",
                        "name":"visible",
                        "value":true
                     }),new SetProperty().initializeFromObject({
                        "target":"_BuildingConstructionStepsComponent_Group2",
                        "name":"includeInLayout",
                        "value":true
                     }),new SetProperty().initializeFromObject({
                        "target":"materialList",
                        "name":"visible",
                        "value":false
                     }),new SetProperty().initializeFromObject({
                        "target":"materialList",
                        "name":"includeInLayout",
                        "value":false
                     })]
                  })];
                  addr006d:
               }
               §§goto(addr0161);
            }
            addr0161:
            return;
         }
         §§goto(addr0026);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr004a);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr004a:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
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
            if(_loc3_ || _loc2_)
            {
               this._dataDirty = true;
               if(_loc3_)
               {
                  addr0042:
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr0042);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               if(this._dataDirty)
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this._dataDirty = false;
                     if(!_loc1_)
                     {
                        addr005b:
                        if(this._data)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              addr0070:
                              this.materialList.dataProvider = this._data;
                           }
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr005b);
               }
               addr007b:
               return;
            }
            §§goto(addr005b);
         }
         §§goto(addr0070);
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(this))
         {
            this.materialLabel.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.noConstructionSteps");
            if(_loc5_ || Boolean(param1))
            {
               this.materialHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.required");
               addr0043:
            }
            §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.material.arrowLeft"));
            if(!_loc4_)
            {
               §§push(§§pop());
            }
            var _loc2_:* = §§pop();
            §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.material.arrowRight"));
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               this.materialList.setStyle("tooltipLeft",_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  this.materialList.setStyle("tooltipRight",_loc3_);
               }
            }
            return;
         }
         §§goto(addr0043);
      }
      
      private function _BuildingConstructionStepsComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0056);
               }
               §§goto(addr00ba);
            }
            addr0056:
            _loc1_.tapeLeft = true;
            if(_loc2_)
            {
               _loc1_.tapeRight = true;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0072:
                  _loc1_.bottom = -10;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._BuildingConstructionStepsComponent_Array3_c);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr00ae);
                     }
                     §§goto(addr00ba);
                  }
                  addr00ae:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr00ba:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00ba);
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _BuildingConstructionStepsComponent_Array3_c() : Array
      {
         return [this._BuildingConstructionStepsComponent_VGroup1_c()];
      }
      
      private function _BuildingConstructionStepsComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._BuildingConstructionStepsComponent_PostitHeaderComponentMultiline1_i(),this._BuildingConstructionStepsComponent_Group2_i(),this._BuildingConstructionStepsComponent_List1_i()];
                     §§goto(addr0051);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0051);
            }
            §§goto(addr0083);
         }
         addr0051:
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0083:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_PostitHeaderComponentMultiline1_i() : PostitHeaderComponentMultiline
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponentMultiline = new PostitHeaderComponentMultiline();
         if(_loc3_ || _loc2_)
         {
            _loc1_.id = "materialHeader";
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr006c);
                     }
                  }
                  §§goto(addr007e);
               }
               addr006c:
               this.materialHeader = _loc1_;
               if(!(_loc2_ && _loc3_))
               {
                  addr007e:
                  BindingManager.executeBindings(this,"materialHeader",this.materialHeader);
               }
               §§goto(addr008b);
            }
         }
         addr008b:
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._BuildingConstructionStepsComponent_HGroup1_c()];
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0066:
                     _loc1_.id = "_BuildingConstructionStepsComponent_Group2";
                     if(!_loc3_)
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0066);
            }
         }
         addr0071:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0089:
               _loc1_.document = this;
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr009a);
               }
            }
            §§goto(addr00a4);
         }
         addr009a:
         this._BuildingConstructionStepsComponent_Group2 = _loc1_;
         if(!_loc3_)
         {
            addr00a4:
            BindingManager.executeBindings(this,"_BuildingConstructionStepsComponent_Group2",this._BuildingConstructionStepsComponent_Group2);
         }
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.top = -5;
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  §§goto(addr003c);
               }
               §§goto(addr0052);
            }
         }
         addr003c:
         _loc1_.horizontalAlign = "center";
         if(!_loc3_)
         {
            addr0052:
            _loc1_.percentHeight = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._BuildingConstructionStepsComponent_BriskImageDynaLib1_c(),this._BuildingConstructionStepsComponent_LocaLabel1_i()];
                  §§goto(addr006e);
               }
               §§goto(addr0098);
            }
         }
         addr006e:
         if(!(_loc3_ && Boolean(this)))
         {
            addr0098:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "noCosts_star";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _BuildingConstructionStepsComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.maxWidth = 150;
            if(_loc2_ || _loc2_)
            {
               _loc1_.maxDisplayedLines = 3;
               if(!_loc3_)
               {
                  _loc1_.styleName = "blueElevenCenter";
                  if(_loc2_ || _loc3_)
                  {
                     addr0062:
                     _loc1_.id = "materialLabel";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr008d:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr0096);
                              }
                              §§goto(addr00a0);
                           }
                        }
                        addr0096:
                        this.materialLabel = _loc1_;
                        if(!_loc3_)
                        {
                           addr00a0:
                           BindingManager.executeBindings(this,"materialLabel",this.materialLabel);
                        }
                        §§goto(addr00ad);
                     }
                  }
                  addr00ad:
                  return _loc1_;
               }
               §§goto(addr0096);
            }
            §§goto(addr0062);
         }
         §§goto(addr008d);
      }
      
      private function _BuildingConstructionStepsComponent_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.itemRenderer = this._BuildingConstructionStepsComponent_ClassFactory1_c();
            if(_loc3_)
            {
               addr0037:
               _loc1_.setStyle("skinClass",ArchitectNeedsSkin);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "materialList";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr008f:
                              this.materialList = _loc1_;
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a1:
                                 BindingManager.executeBindings(this,"materialList",this.materialList);
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
               }
               §§goto(addr008f);
            }
            §§goto(addr00a1);
         }
         §§goto(addr0037);
      }
      
      private function _BuildingConstructionStepsComponent_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.generator = ArchitectNeedItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___BuildingConstructionStepsComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _BuildingConstructionStepsComponent_Group2() : Group
      {
         return this._1579675192_BuildingConstructionStepsComponent_Group2;
      }
      
      public function set _BuildingConstructionStepsComponent_Group2(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1579675192_BuildingConstructionStepsComponent_Group2;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1579675192_BuildingConstructionStepsComponent_Group2 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_BuildingConstructionStepsComponent_Group2",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0063);
               }
            }
            addr0072:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get materialHeader() : PostitHeaderComponentMultiline
      {
         return this._1935639916materialHeader;
      }
      
      public function set materialHeader(param1:PostitHeaderComponentMultiline) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1935639916materialHeader;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1935639916materialHeader = param1;
                  if(_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get materialLabel() : LocaLabel
      {
         return this._1167242739materialLabel;
      }
      
      public function set materialLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1167242739materialLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1167242739materialLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialList() : List
      {
         return this._2115854747materialList;
      }
      
      public function set materialList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2115854747materialList;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._2115854747materialList = param1;
                  if(_loc4_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
            addr0082:
            return;
         }
         §§goto(addr005c);
      }
   }
}


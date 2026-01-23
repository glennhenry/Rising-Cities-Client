package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.events.ImprovementInventoryItemRendererEvent;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ImprovementInventoryItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const GET_MORE_EVENT:String = "GET_MORE_EVENT";
      
      public static const itemWidth:Number = 82;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         GET_MORE_EVENT = "GET_MORE_EVENT";
         if(!_loc1_)
         {
            addr002c:
            itemWidth = 82;
         }
         return;
      }
      §§goto(addr002c);
      
      private var _1973488541_ImprovementInventoryItemRenderer_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _1973488540_ImprovementInventoryItemRenderer_BriskImageDynaLib3:BriskImageDynaLib;
      
      private var _1973488536_ImprovementInventoryItemRenderer_BriskImageDynaLib7:BriskImageDynaLib;
      
      private var _513842358_ImprovementInventoryItemRenderer_Group1:Group;
      
      private var _1233113849amountGroup:Group;
      
      private var _1781598580getMoreGroup:Group;
      
      private var _1785696745getMoreLabel:LocaLabel;
      
      private var _3242771item:BriskImageDynaLib;
      
      private var _1376040855itemAmountLabel:LocaLabel;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _2126455888itemBadge:BriskImageDynaLib;
      
      private var _283910695masterBG:BriskImageDynaLib;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementInventoryItemRendererVo;
      
      private var _dirty:Boolean;
      
      private var _currentRenderState:String = "";
      
      public function ImprovementInventoryItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.minHeight = 87;
                  if(_loc1_)
                  {
                     addr003a:
                     this.minWidth = 82;
                     if(!_loc2_)
                     {
                        §§goto(addr0045);
                     }
                     §§goto(addr0096);
                  }
                  addr0045:
                  this.autoDrawBackground = false;
                  if(!_loc2_)
                  {
                     this.mxmlContent = [this._ImprovementInventoryItemRenderer_BriskImageDynaLib1_i(),this._ImprovementInventoryItemRenderer_Group1_i(),this._ImprovementInventoryItemRenderer_BriskImageDynaLib7_i(),this._ImprovementInventoryItemRenderer_Group3_i()];
                     if(!_loc2_)
                     {
                        this.currentState = "normal";
                        if(_loc1_)
                        {
                           addr007d:
                           this.addEventListener("creationComplete",this.___ImprovementInventoryItemRenderer_ItemRenderer1_creationComplete);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr0096:
                              this.addEventListener("rollOver",this.___ImprovementInventoryItemRenderer_ItemRenderer1_rollOver);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr00af);
                              }
                           }
                        }
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr003a);
            }
            addr00af:
            this.addEventListener("rollOut",this.___ImprovementInventoryItemRenderer_ItemRenderer1_rollOut);
            if(_loc1_ || _loc2_)
            {
               states = [new State({
                  "name":"normal",
                  "overrides":[]
               }),new State({
                  "name":"disabled",
                  "overrides":[]
               }),new State({
                  "name":"selected",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"masterBG",
                     "name":"dynaBmpSourceName",
                     "value":"item_master_bg_green"
                  }),new SetProperty().initializeFromObject({
                     "target":"_ImprovementInventoryItemRenderer_Group1",
                     "name":"alpha",
                     "value":0.5
                  }),new SetProperty().initializeFromObject({
                     "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",
                     "name":"visible",
                     "value":true
                  })]
               }),new State({
                  "name":"over",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"masterBG",
                     "name":"dynaBmpSourceName",
                     "value":"item_master_bg_green"
                  }),new SetProperty().initializeFromObject({
                     "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",
                     "name":"dynaBmpSourceName",
                     "value":"abort_over"
                  })]
               }),new State({
                  "name":"overAndSelected",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"masterBG",
                     "name":"dynaBmpSourceName",
                     "value":"item_master_bg_green"
                  }),new SetProperty().initializeFromObject({
                     "target":"_ImprovementInventoryItemRenderer_Group1",
                     "name":"alpha",
                     "value":0.5
                  }),new SetProperty().initializeFromObject({
                     "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",
                     "name":"dynaBmpSourceName",
                     "value":"abort_over"
                  }),new SetProperty().initializeFromObject({
                     "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",
                     "name":"visible",
                     "value":true
                  })]
               }),new State({
                  "name":"empty",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib2",
                     "name":"visible",
                     "value":false
                  }),new SetProperty().initializeFromObject({
                     "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib3",
                     "name":"visible",
                     "value":false
                  })]
               })];
               addr00c8:
            }
            return;
         }
         §§goto(addr007d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr004a);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr004a:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.autoDrawBackground = false;
            if(!_loc2_)
            {
               this.width = itemWidth;
               if(_loc3_ || Boolean(this))
               {
                  this.getMoreLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.getMore.capital"));
               }
            }
         }
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super.data = param1;
            if(!_loc3_)
            {
               if(!RandomUtilities.isEqual(this._data,param1))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     this._dirty = true;
                     if(!_loc3_)
                     {
                        addr0067:
                        this._data = ImprovementInventoryItemRendererVo(param1);
                        if(_loc2_ || _loc3_)
                        {
                           invalidateProperties();
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr0067);
      }
      
      override public function set selected(param1:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(this._data);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this._data);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop().isGetMore);
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              var _temp_4:* = §§pop();
                              §§push(_temp_4);
                              §§push(_temp_4);
                              if(!_loc4_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§pop();
                                       if(_loc3_)
                                       {
                                          addr0076:
                                          addr0072:
                                          §§push(this._data.isEmpty);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                addr008e:
                                                if(§§pop())
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§goto(addr009f);
                                                   }
                                                   else
                                                   {
                                                      addr00bf:
                                                      if(currentState == "over")
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            addr00ce:
                                                            this._currentRenderState = "overAndSelected";
                                                            if(_loc4_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this._currentRenderState = "selected";
                                                         if(_loc4_)
                                                         {
                                                         }
                                                      }
                                                      addr0142:
                                                      §§push(param1);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            var _temp_8:* = §§pop();
                                                            addr0158:
                                                            §§push(_temp_8);
                                                            if(_temp_8)
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  addr016a:
                                                                  §§pop();
                                                                  addr016b:
                                                                  addr0192:
                                                                  §§push(param1);
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() == selected);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr0182:
                                                                        §§push(!§§pop());
                                                                        if(!(_loc4_ && Boolean(this)))
                                                                        {
                                                                           addr0191:
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  var _loc2_:* = §§pop();
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     super.selected = param1;
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr01cb:
                                                                                 §§push(this._data);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() == null);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       var _temp_15:* = §§pop();
                                                                                       §§push(_temp_15);
                                                                                       if(!_temp_15)
                                                                                       {
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             addr01ee:
                                                                                             §§pop();
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                §§goto(addr020b);
                                                                                             }
                                                                                             §§goto(addr0236);
                                                                                          }
                                                                                       }
                                                                                       addr020b:
                                                                                       §§goto(addr0201);
                                                                                    }
                                                                                    §§goto(addr01ee);
                                                                                 }
                                                                                 addr0201:
                                                                                 §§goto(addr01fd);
                                                                              }
                                                                              addr01fd:
                                                                              §§push(this._data.isEmpty);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr020a:
                                                                                 §§push(§§pop());
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0236:
                                                                                 dispatchEvent(new ImprovementInventoryItemRendererEvent(ImprovementInventoryItemRendererEvent.SELECTION_CHANGED,this._data.cid,true));
                                                                              }
                                                                              §§goto(addr0250);
                                                                           }
                                                                           addr0250:
                                                                           return;
                                                                        }
                                                                        §§goto(addr020a);
                                                                     }
                                                                     §§goto(addr01fd);
                                                                  }
                                                                  §§goto(addr01cb);
                                                               }
                                                               §§goto(addr0182);
                                                            }
                                                            §§goto(addr0191);
                                                         }
                                                      }
                                                      §§goto(addr016a);
                                                   }
                                                }
                                                else
                                                {
                                                   addr00ae:
                                                   §§push(param1);
                                                   if(!_loc4_)
                                                   {
                                                      addr00b5:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr00bf);
                                                         }
                                                         §§goto(addr00ce);
                                                      }
                                                      else if(currentState == "overAndSelected")
                                                      {
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            addr0108:
                                                            this._currentRenderState = "over";
                                                            if(_loc3_ || param1)
                                                            {
                                                            }
                                                            §§goto(addr0142);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this._currentRenderState = "normal";
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§goto(addr0142);
                                                         }
                                                      }
                                                      §§goto(addr016b);
                                                   }
                                                }
                                             }
                                             §§goto(addr0182);
                                          }
                                          §§goto(addr008e);
                                       }
                                       addr009f:
                                       return;
                                    }
                                    §§goto(addr0192);
                                 }
                                 §§goto(addr008e);
                              }
                              §§goto(addr0158);
                           }
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr00ae);
            }
            §§goto(addr0076);
         }
         §§goto(addr0108);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this._data);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr004d:
                           §§pop();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§push(this._dirty);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    addr0072:
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          this._dirty = false;
                                          if(_loc2_)
                                          {
                                             if(!this.selected)
                                             {
                                                if(!_loc3_)
                                                {
                                                   this._currentRenderState = "normal";
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      this.setCurrentState("normal");
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         addr00eb:
                                                         this.masterBG.visible = this.masterBG.includeInLayout = this._data.useMasterBg;
                                                         if(_loc2_)
                                                         {
                                                            this.getMoreGroup.includeInLayout = this.getMoreGroup.visible = this._data.isGetMore;
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               addr012d:
                                                               §§push(this.itemBackground);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(this.itemBackground);
                                                                  var _loc1_:*;
                                                                  this.amountGroup.visible = _loc1_ = this.amountGroup.includeInLayout = this.itemBadge.visible = this.itemBadge.includeInLayout = this.item.visible = this.item.includeInLayout = !this._data.isEmpty && !this._data.isGetMore;
                                                                  §§push(_loc1_);
                                                                  if(!_loc3_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     §§push(_loc1_);
                                                                  }
                                                                  §§pop().includeInLayout = §§pop();
                                                                  §§pop().visible = _loc1_;
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(this._data);
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        addr01c3:
                                                                        §§push(§§pop().isEmpty);
                                                                        if(_loc2_)
                                                                        {
                                                                           addr01cb:
                                                                           §§push(!§§pop());
                                                                           if(_loc2_)
                                                                           {
                                                                              var _temp_22:* = §§pop();
                                                                              addr01d2:
                                                                              §§push(_temp_22);
                                                                              if(_temp_22)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr01e1:
                                                                                       §§push(this._data);
                                                                                       if(_loc2_ || Boolean(this))
                                                                                       {
                                                                                          addr01fb:
                                                                                          §§push(§§pop().isGetMore);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr01fa:
                                                                                             §§push(!§§pop());
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc3_ && _loc1_))
                                                                                             {
                                                                                                addr0210:
                                                                                                this.itemBackground.briskDynaVo = this._data.itemBackgroundDynaVo;
                                                                                                addr020c:
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   this.item.briskDynaVo = this._data.itemDynaVo;
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0237:
                                                                                                      addr0233:
                                                                                                      if(this._data.badgeDynaVo)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            addr0243:
                                                                                                            §§push(this.itemBadge);
                                                                                                            if(_loc2_ || _loc2_)
                                                                                                            {
                                                                                                               §§pop().briskDynaVo = this._data.badgeDynaVo;
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  addr026f:
                                                                                                                  addr026b:
                                                                                                                  §§push(this.itemBadge);
                                                                                                                  §§push(this.itemBadge);
                                                                                                                  §§push(this._data.badgeDynaVo == null);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                  }
                                                                                                                  var _temp_27:* = §§pop();
                                                                                                                  §§pop().includeInLayout = _loc1_ = §§pop();
                                                                                                                  §§pop().visible = _loc1_;
                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§goto(addr02a3);
                                                                                                                  }
                                                                                                                  §§goto(addr02b9);
                                                                                                               }
                                                                                                               §§goto(addr02a3);
                                                                                                            }
                                                                                                            §§goto(addr026f);
                                                                                                         }
                                                                                                         addr02a3:
                                                                                                         this.itemAmountLabel.text = this._data.amount.toString();
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            addr02b9:
                                                                                                            super.commitProperties();
                                                                                                         }
                                                                                                         §§goto(addr02be);
                                                                                                      }
                                                                                                      §§goto(addr026b);
                                                                                                   }
                                                                                                   §§goto(addr02be);
                                                                                                }
                                                                                                §§goto(addr026b);
                                                                                             }
                                                                                             §§goto(addr0243);
                                                                                          }
                                                                                          §§goto(addr02b9);
                                                                                       }
                                                                                       §§goto(addr0237);
                                                                                    }
                                                                                    §§goto(addr020c);
                                                                                 }
                                                                                 §§goto(addr01fa);
                                                                              }
                                                                              §§goto(addr01fb);
                                                                           }
                                                                           §§goto(addr01fa);
                                                                        }
                                                                        §§goto(addr01fb);
                                                                     }
                                                                     §§goto(addr0237);
                                                                  }
                                                                  §§goto(addr01e1);
                                                               }
                                                               §§goto(addr0210);
                                                            }
                                                            §§goto(addr0243);
                                                         }
                                                      }
                                                      §§goto(addr0233);
                                                   }
                                                   §§goto(addr02a3);
                                                }
                                                §§goto(addr0243);
                                             }
                                             else
                                             {
                                                this.selected = false;
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   this.selected = true;
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§goto(addr00eb);
                                                   }
                                                   §§goto(addr020c);
                                                }
                                             }
                                             §§goto(addr02b9);
                                          }
                                       }
                                       §§goto(addr00eb);
                                    }
                                    §§goto(addr02b9);
                                 }
                                 §§goto(addr01cb);
                              }
                              §§goto(addr01fa);
                           }
                           §§goto(addr012d);
                        }
                        §§goto(addr01fb);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr01d2);
               }
               §§goto(addr004d);
            }
            §§goto(addr01c3);
         }
         addr02be:
      }
      
      override protected function getCurrentRendererState() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._currentRenderState);
            if(!_loc1_)
            {
               if(§§pop() != "")
               {
                  if(!_loc1_)
                  {
                     §§goto(addr0040);
                  }
               }
               §§goto(addr0041);
            }
            addr0040:
            return this._currentRenderState;
         }
         addr0041:
         return super.getCurrentRendererState();
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this._data);
            if(!(_loc3_ && Boolean(this)))
            {
               if(§§pop() != null)
               {
                  if(!_loc3_)
                  {
                     addr004b:
                     if(this._data.isEmpty)
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           param1 = "normal";
                           if(_loc4_)
                           {
                              §§goto(addr0077);
                           }
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0089);
               }
               addr0077:
               this._currentRenderState = param1;
               if(!(_loc3_ && _loc3_))
               {
                  addr0089:
                  super.setCurrentState(param1,param2);
               }
               §§goto(addr0090);
            }
            §§goto(addr004b);
         }
         addr0090:
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(this._data.isEmpty)
            {
               if(_loc2_)
               {
                  §§goto(addr002f);
               }
               else
               {
                  this.setCurrentState("over");
                  addr0057:
                  if(_loc2_)
                  {
                     addr0080:
                     dispatchEvent(new ImprovementInventoryItemRendererEvent(ImprovementInventoryItemRendererEvent.ITEM_OVER,this._data.cid,true,this._data.improvementVo));
                  }
               }
            }
            else if(!selected)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§goto(addr0057);
               }
               §§goto(addr0080);
            }
            else
            {
               this.setCurrentState("overAndSelected");
               if(!_loc3_)
               {
                  §§goto(addr0080);
               }
            }
            return;
         }
         addr002f:
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(this._data.isEmpty)
            {
               if(_loc3_)
               {
                  return;
               }
               addr008c:
               dispatchEvent(new ImprovementInventoryItemRendererEvent(ImprovementInventoryItemRendererEvent.ITEM_OUT));
            }
            else if(!selected)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr0052:
                  this.setCurrentState("normal");
                  if(_loc2_ && Boolean(this))
                  {
                  }
               }
               §§goto(addr008c);
            }
            else
            {
               this.setCurrentState("selected");
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr008c);
               }
            }
            return;
         }
         §§goto(addr0052);
      }
      
      private function handleGetMore() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            dispatchEvent(new Event(GET_MORE_EVENT,true));
         }
      }
      
      public function get isEmpty() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._data);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr003e);
                  }
               }
               §§goto(addr005e);
            }
            addr003e:
            §§push(this._data.isEmpty);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(false);
                     if(!_loc1_)
                     {
                        §§goto(addr005d);
                     }
                  }
                  else
                  {
                     addr005e:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr005e);
            }
            addr005d:
            return §§pop();
         }
         §§goto(addr005e);
      }
      
      override public function get measuredWidth() : Number
      {
         return itemWidth;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "item_master_bg_normal";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.top = 5;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "masterBG";
                        if(!_loc2_)
                        {
                           addr007b:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr008f:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00aa:
                                    this.masterBG = _loc1_;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00bc:
                                       BindingManager.executeBindings(this,"masterBG",this.masterBG);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr007b);
                  }
               }
            }
            §§goto(addr008f);
         }
         §§goto(addr00bc);
      }
      
      private function _ImprovementInventoryItemRenderer_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.alpha = 1;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_Group2_i(),this._ImprovementInventoryItemRenderer_BriskImageDynaLib4_i(),this._ImprovementInventoryItemRenderer_VGroup1_c(),this._ImprovementInventoryItemRenderer_BriskImageDynaLib6_i()];
                     if(_loc3_)
                     {
                        _loc1_.id = "_ImprovementInventoryItemRenderer_Group1";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00a8:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00b9:
                                    this._ImprovementInventoryItemRenderer_Group1 = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00c3:
                                       BindingManager.executeBindings(this,"_ImprovementInventoryItemRenderer_Group1",this._ImprovementInventoryItemRenderer_Group1);
                                    }
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr00c3);
                              }
                              §§goto(addr00d0);
                           }
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr00a8);
               }
            }
            §§goto(addr00c3);
         }
         addr00d0:
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.bottom = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.height = 22;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.top = 68;
                     §§goto(addr004f);
                  }
                  §§goto(addr008d);
               }
            }
            addr004f:
            if(_loc3_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_BriskImageDynaLib2_i(),this._ImprovementInventoryItemRenderer_HGroup1_c()];
               if(_loc3_)
               {
                  _loc1_.id = "amountGroup";
                  if(_loc3_)
                  {
                     addr008d:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr00b7:
                              this.amountGroup = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00c9:
                                 BindingManager.executeBindings(this,"amountGroup",this.amountGroup);
                              }
                           }
                           §§goto(addr00d6);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00c9);
               }
            }
            addr00d6:
            return _loc1_;
         }
         §§goto(addr008d);
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.height = 22;
            if(!_loc2_)
            {
               _loc1_.width = 61;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.dynaLibName = "gui_ui_inventory";
                     if(_loc3_)
                     {
                        _loc1_.dynaBmpSourceName = "item_amount_bg";
                        if(_loc3_)
                        {
                           addr007a:
                           _loc1_.id = "_ImprovementInventoryItemRenderer_BriskImageDynaLib2";
                           if(_loc3_)
                           {
                              addr0092:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr009e:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00a7:
                                       this._ImprovementInventoryItemRenderer_BriskImageDynaLib2 = _loc1_;
                                       if(!_loc2_)
                                       {
                                          addr00b1:
                                          BindingManager.executeBindings(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib2",this._ImprovementInventoryItemRenderer_BriskImageDynaLib2);
                                       }
                                       §§goto(addr00be);
                                    }
                                    §§goto(addr00b1);
                                 }
                                 addr00be:
                                 return _loc1_;
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr009e);
            }
            §§goto(addr007a);
         }
         §§goto(addr009e);
      }
      
      private function _ImprovementInventoryItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.top = 4;
                  if(!_loc2_)
                  {
                     addr0056:
                     _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_BriskImageDynaLib3_i(),this._ImprovementInventoryItemRenderer_LocaLabel1_i()];
                     if(!_loc2_)
                     {
                        §§goto(addr006c);
                     }
                  }
               }
               §§goto(addr0078);
            }
            addr006c:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0078:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.height = 14;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.width = 15;
               if(!(_loc3_ && _loc2_))
               {
                  addr0058:
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.dynaBmpSourceName = "amount_icon_mini";
                     if(_loc2_)
                     {
                        addr0076:
                        _loc1_.id = "_ImprovementInventoryItemRenderer_BriskImageDynaLib3";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr009a:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr00a3:
                                    this._ImprovementInventoryItemRenderer_BriskImageDynaLib3 = _loc1_;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00b5:
                                       BindingManager.executeBindings(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib3",this._ImprovementInventoryItemRenderer_BriskImageDynaLib3);
                                    }
                                 }
                                 §§goto(addr00c2);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr00b5);
                     }
                     addr00c2:
                     return _loc1_;
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr009a);
            }
            §§goto(addr0058);
         }
         §§goto(addr0076);
      }
      
      private function _ImprovementInventoryItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "improvementAmount";
            if(_loc2_)
            {
               _loc1_.setStyle("paddingTop",3);
               if(_loc2_)
               {
                  _loc1_.id = "itemAmountLabel";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr007a:
                              this.itemAmountLabel = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 addr008c:
                                 BindingManager.executeBindings(this,"itemAmountLabel",this.itemAmountLabel);
                              }
                           }
                           §§goto(addr0099);
                        }
                     }
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr008c);
         }
         addr0099:
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.top = 9;
            if(_loc3_)
            {
               addr002b:
               _loc1_.id = "itemBackground";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr008d);
                     }
                  }
                  addr007b:
                  this.itemBackground = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr008d:
                     BindingManager.executeBindings(this,"itemBackground",this.itemBackground);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr008d);
         }
         §§goto(addr002b);
      }
      
      private function _ImprovementInventoryItemRenderer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 64;
            if(_loc3_ || _loc3_)
            {
               _loc1_.height = 63;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc3_)
                     {
                        _loc1_.paddingLeft = 10;
                        if(!_loc2_)
                        {
                           addr008c:
                           _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_BriskImageDynaLib5_i()];
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr00a4);
                           }
                        }
                        §§goto(addr00b0);
                     }
                     addr00a4:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr00b0:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00b4);
                  }
               }
               §§goto(addr00b0);
            }
            §§goto(addr008c);
         }
         addr00b4:
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.maxWidth = 64;
            if(_loc2_ || _loc2_)
            {
               addr003a:
               _loc1_.maxHeight = 63;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "item";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0095:
                              this.item = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a7:
                                 BindingManager.executeBindings(this,"item",this.item);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr00a7);
               }
            }
            §§goto(addr0095);
         }
         §§goto(addr003a);
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.top = 9;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.left = 0;
               if(!_loc2_)
               {
                  _loc1_.id = "itemBadge";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0074:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr007d:
                              this.itemBadge = _loc1_;
                              if(_loc3_)
                              {
                                 addr0087:
                                 BindingManager.executeBindings(this,"itemBadge",this.itemBadge);
                              }
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr007d);
                  }
                  addr0094:
                  return _loc1_;
               }
               §§goto(addr007d);
            }
            §§goto(addr0074);
         }
         §§goto(addr0087);
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.height = 25;
            if(_loc3_)
            {
               _loc1_.width = 25;
               if(_loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.dynaBmpSourceName = "abort_normal";
                     if(_loc3_)
                     {
                        _loc1_.visible = false;
                        if(_loc3_)
                        {
                           §§goto(addr0067);
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr00af);
            }
            §§goto(addr00b9);
         }
         addr0067:
         _loc1_.right = 0;
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0083:
               _loc1_.id = "_ImprovementInventoryItemRenderer_BriskImageDynaLib7";
               if(!_loc2_)
               {
                  addr009a:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr00a6:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr00af);
                        }
                        §§goto(addr00b9);
                     }
                  }
                  addr00af:
                  this._ImprovementInventoryItemRenderer_BriskImageDynaLib7 = _loc1_;
                  if(_loc3_)
                  {
                     addr00b9:
                     BindingManager.executeBindings(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",this._ImprovementInventoryItemRenderer_BriskImageDynaLib7);
                  }
                  §§goto(addr00c6);
               }
            }
            §§goto(addr00a6);
         }
         addr00c6:
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.includeInLayout = false;
            if(_loc3_)
            {
               _loc1_.visible = false;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_BriskImageDynaLib8_c(),this._ImprovementInventoryItemRenderer_HGroup2_c(),this._ImprovementInventoryItemRenderer_BriskImageDynaLib9_i()];
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("mouseOver",this.__getMoreGroup_mouseOver);
                     if(_loc3_)
                     {
                        _loc1_.addEventListener("mouseOut",this.__getMoreGroup_mouseOut);
                        if(_loc3_)
                        {
                           _loc1_.addEventListener("click",this.__getMoreGroup_click);
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.id = "getMoreGroup";
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr00ae);
                              }
                              §§goto(addr00e9);
                           }
                           addr00ae:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00ce:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr00d7);
                                 }
                                 §§goto(addr00e9);
                              }
                           }
                           addr00d7:
                           this.getMoreGroup = _loc1_;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00e9:
                              BindingManager.executeBindings(this,"getMoreGroup",this.getMoreGroup);
                           }
                           §§goto(addr00f6);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00e9);
                  }
                  addr00f6:
                  return _loc1_;
               }
               §§goto(addr00ce);
            }
            §§goto(addr00d7);
         }
         §§goto(addr00ce);
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "postit_get_more";
               if(_loc3_)
               {
                  _loc1_.left = 9;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.top = 6;
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0085:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr0085);
            }
         }
         addr0089:
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 44;
            if(_loc3_)
            {
               _loc1_.width = 52;
               if(_loc3_ || Boolean(this))
               {
                  addr0045:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.top = 27;
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.left = 14;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_LocaLabel2_i()];
                              if(_loc3_ || _loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00c2:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00c6);
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00c6);
                        }
                     }
                     §§goto(addr00c2);
                  }
               }
            }
            addr00c6:
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _ImprovementInventoryItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "whiteNineCenter";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.maxDisplayedLines = 3;
               if(!_loc2_)
               {
                  addr0047:
                  _loc1_.percentWidth = 97;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.id = "getMoreLabel";
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0077:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 addr009f:
                                 this.getMoreLabel = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00b1:
                                    BindingManager.executeBindings(this,"getMoreLabel",this.getMoreLabel);
                                 }
                              }
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0077);
               }
               addr00be:
               return _loc1_;
            }
            §§goto(addr0047);
         }
         §§goto(addr0077);
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.right = -5;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0068:
                     _loc1_.id = "plusIcon";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr009e:
                                 this.plusIcon = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00b0:
                                    BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
                                 }
                              }
                              §§goto(addr00bd);
                           }
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00b0);
                  }
               }
               §§goto(addr009e);
            }
            addr00bd:
            return _loc1_;
         }
         §§goto(addr0068);
      }
      
      public function __getMoreGroup_mouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.plusIcon);
            if(!_loc3_)
            {
               §§push(this.plusIcon);
               if(!(_loc3_ && _loc3_))
               {
                  §§pop().scaleX = §§pop().scaleX + 0.05;
                  if(_loc2_)
                  {
                     addr0055:
                     this.plusIcon.scaleY += 0.05;
                     addr0051:
                  }
                  §§goto(addr005e);
               }
               §§goto(addr0055);
            }
            §§goto(addr0051);
         }
         addr005e:
      }
      
      public function __getMoreGroup_mouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this.plusIcon);
            if(!_loc2_)
            {
               §§push(1);
               if(!_loc2_)
               {
                  §§pop().scaleX = §§pop();
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     addr004a:
                     this.plusIcon.scaleY = 1;
                     addr0048:
                  }
                  §§goto(addr004d);
               }
               §§goto(addr004a);
            }
            §§goto(addr0048);
         }
         addr004d:
      }
      
      public function __getMoreGroup_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleGetMore();
         }
      }
      
      public function ___ImprovementInventoryItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      public function ___ImprovementInventoryItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.mouseOverHandler(param1);
         }
      }
      
      public function ___ImprovementInventoryItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.mouseOutHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementInventoryItemRenderer_BriskImageDynaLib2() : BriskImageDynaLib
      {
         return this._1973488541_ImprovementInventoryItemRenderer_BriskImageDynaLib2;
      }
      
      public function set _ImprovementInventoryItemRenderer_BriskImageDynaLib2(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1973488541_ImprovementInventoryItemRenderer_BriskImageDynaLib2;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1973488541_ImprovementInventoryItemRenderer_BriskImageDynaLib2 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib2",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementInventoryItemRenderer_BriskImageDynaLib3() : BriskImageDynaLib
      {
         return this._1973488540_ImprovementInventoryItemRenderer_BriskImageDynaLib3;
      }
      
      public function set _ImprovementInventoryItemRenderer_BriskImageDynaLib3(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1973488540_ImprovementInventoryItemRenderer_BriskImageDynaLib3;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1973488540_ImprovementInventoryItemRenderer_BriskImageDynaLib3 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib3",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementInventoryItemRenderer_BriskImageDynaLib7() : BriskImageDynaLib
      {
         return this._1973488536_ImprovementInventoryItemRenderer_BriskImageDynaLib7;
      }
      
      public function set _ImprovementInventoryItemRenderer_BriskImageDynaLib7(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1973488536_ImprovementInventoryItemRenderer_BriskImageDynaLib7;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr004b:
                  this._1973488536_ImprovementInventoryItemRenderer_BriskImageDynaLib7 = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementInventoryItemRenderer_Group1() : Group
      {
         return this._513842358_ImprovementInventoryItemRenderer_Group1;
      }
      
      public function set _ImprovementInventoryItemRenderer_Group1(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._513842358_ImprovementInventoryItemRenderer_Group1;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._513842358_ImprovementInventoryItemRenderer_Group1 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementInventoryItemRenderer_Group1",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get amountGroup() : Group
      {
         return this._1233113849amountGroup;
      }
      
      public function set amountGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1233113849amountGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1233113849amountGroup = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get getMoreGroup() : Group
      {
         return this._1781598580getMoreGroup;
      }
      
      public function set getMoreGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1781598580getMoreGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr003a:
                  this._1781598580getMoreGroup = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0045);
                  }
                  §§goto(addr0055);
               }
               addr0045:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0055:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getMoreGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0064);
            }
            addr0064:
            return;
         }
         §§goto(addr003a);
      }
      
      [Bindable(event="propertyChange")]
      public function get getMoreLabel() : LocaLabel
      {
         return this._1785696745getMoreLabel;
      }
      
      public function set getMoreLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1785696745getMoreLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1785696745getMoreLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getMoreLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
            addr0073:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : BriskImageDynaLib
      {
         return this._3242771item;
      }
      
      public function set item(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3242771item;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._3242771item = param1;
                  addr004a:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr007a);
               }
            }
            addr0089:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAmountLabel() : LocaLabel
      {
         return this._1376040855itemAmountLabel;
      }
      
      public function set itemAmountLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1376040855itemAmountLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1376040855itemAmountLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmountLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBackground() : BriskImageDynaLib
      {
         return this._1295462561itemBackground;
      }
      
      public function set itemBackground(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1295462561itemBackground;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1295462561itemBackground = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBackground",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBadge() : BriskImageDynaLib
      {
         return this._2126455888itemBadge;
      }
      
      public function set itemBadge(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2126455888itemBadge;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr003e:
                  this._2126455888itemBadge = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBadge",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get masterBG() : BriskImageDynaLib
      {
         return this._283910695masterBG;
      }
      
      public function set masterBG(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._283910695masterBG;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._283910695masterBG = param1;
                  addr003a:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masterBG",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr003a);
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1849499341plusIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1849499341plusIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}


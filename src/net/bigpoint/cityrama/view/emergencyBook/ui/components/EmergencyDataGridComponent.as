package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.collections.ArrayCollection;
   import mx.collections.IList;
   import mx.collections.ISort;
   import mx.collections.ISortField;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.ToggleButton;
   import spark.events.IndexChangeEvent;
   import spark.layouts.HorizontalLayout;
   
   public class EmergencyDataGridComponent extends List
   {
      
      public static const ITEM_SELECTED:String = "itemSelected";
      
      public static const SELECT_ITEM_EVENT:Event;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         ITEM_SELECTED = "itemSelected";
         if(_loc1_)
         {
            SELECT_ITEM_EVENT = new Event("selectItem",true);
            if(!(_loc2_ && EmergencyDataGridComponent))
            {
               addr0053:
               _skinParts = {
                  "nameSortButton":true,
                  "listRightButton":true,
                  "pagingList":true,
                  "dataGroup":false,
                  "operationCountSortButton":true,
                  "badgeSortButton":true,
                  "dropIndicator":false,
                  "pagingLabel":false,
                  "listLeftButton":true,
                  "scroller":false
               };
            }
            §§goto(addr0083);
         }
         §§goto(addr0053);
      }
      addr0083:
      
      private var _iteration:uint = 0;
      
      private var _iterationLength:uint = 4;
      
      private var _dataProvider:IList;
      
      private var _sort:ISort;
      
      public var badgeSortButton:ToggleButton;
      
      public var nameSortButton:ToggleButton;
      
      public var operationCountSortButton:ToggleButton;
      
      public var pagingList:List;
      
      public var pagingLabel:LocaLabel;
      
      public var listLeftButton:DynamicImageButton;
      
      public var listRightButton:DynamicImageButton;
      
      public function EmergencyDataGridComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               §§goto(addr0027);
            }
            §§goto(addr003a);
         }
         addr0027:
         this.addEventListener(IndexChangeEvent.CHANGE,this.handleIndexChange);
         if(_loc1_)
         {
            addr003a:
            this.doubleClickEnabled = true;
            if(!_loc2_)
            {
               this.addEventListener(MouseEvent.DOUBLE_CLICK,this.doubleClickHandler);
            }
         }
      }
      
      private function handleIndexChange(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(selectedIndex != -1)
            {
               if(_loc2_ || _loc3_)
               {
                  dispatchEvent(new Event(ITEM_SELECTED,true));
               }
            }
         }
      }
      
      override public function set dataProvider(param1:IList) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._dataProvider = param1;
            if(_loc2_)
            {
               addr002a:
               if(this._dataProvider == null)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  this.updatePagingList();
                  if(!(_loc3_ && Boolean(this)))
                  {
                     super.dataProvider = this.currentIteration;
                     if(!_loc3_)
                     {
                        addr005d:
                        this.checkScrollButtons();
                     }
                     §§goto(addr0062);
                  }
               }
               §§goto(addr005d);
            }
            addr0062:
            return;
         }
         §§goto(addr002a);
      }
      
      public function set preselectedIndex(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 >= 0)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  selectedIndex = param1;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     addr004b:
                     this.handleIndexChange(null);
                  }
               }
            }
            return;
         }
         §§goto(addr004b);
      }
      
      private function get currentIteration() : IList
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:uint = 0;
         var _loc2_:ArrayCollection = null;
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         if(!_loc6_)
         {
            §§push(this._iterationLength);
            if(_loc5_)
            {
               §§push(§§pop() > 0);
               if(_loc5_)
               {
                  §§push(§§pop());
                  if(_loc5_ || Boolean(this))
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     §§push(_temp_2);
                     if(_loc5_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           if(!(_loc6_ && Boolean(_loc1_)))
                           {
                              §§pop();
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 §§push(this._dataProvider);
                                 if(!(_loc6_ && Boolean(_loc1_)))
                                 {
                                    addr0092:
                                    var _temp_7:* = §§pop();
                                    addr0093:
                                    §§push(_temp_7);
                                    if(_temp_7)
                                    {
                                       if(!_loc6_)
                                       {
                                          addr009d:
                                          §§pop();
                                          if(_loc5_)
                                          {
                                             §§goto(addr00ac);
                                          }
                                          §§goto(addr00d8);
                                       }
                                    }
                                    addr00ac:
                                    §§goto(addr00a4);
                                 }
                                 §§goto(addr009d);
                              }
                              addr00a4:
                              if(Boolean(this._dataProvider.length))
                              {
                                 if(_loc5_)
                                 {
                                    addr00c9:
                                    _loc1_ = Math.ceil(this._dataProvider.length / this._iterationLength);
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       addr00d8:
                                       this._iteration = Math.min(this._iteration,_loc1_);
                                    }
                                 }
                                 addr00e7:
                                 _loc2_ = new ArrayCollection();
                                 if(!(_loc6_ && Boolean(_loc1_)))
                                 {
                                    _loc3_ = int(this._iteration * this._iterationLength);
                                 }
                                 do
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       §§push(§§pop() < this._dataProvider.length);
                                       if(_loc5_ || Boolean(this))
                                       {
                                          var _temp_13:* = §§pop();
                                          §§push(_temp_13);
                                          if(_temp_13)
                                          {
                                             if(!(_loc6_ && Boolean(this)))
                                             {
                                                §§pop();
                                                if(_loc5_ || Boolean(_loc3_))
                                                {
                                                   addr01a9:
                                                   addr018e:
                                                   §§push(_loc3_);
                                                   §§push(this._iteration + 1);
                                                   if(!(_loc6_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(§§pop() * this._iterationLength);
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      _loc2_.addItem(this._dataProvider.getItemAt(_loc3_));
                                                      if(!(_loc5_ || Boolean(this)))
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      this.pagingList.selectedIndex = this._iteration;
                                                      if(!_loc6_)
                                                      {
                                                         §§push(this.pagingLabel);
                                                         if(!_loc6_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            addr01d8:
                                                            §§push(this.pagingLabel);
                                                         }
                                                         §§push(Number(this._iteration + 1).toString() + "/");
                                                         if(!(_loc6_ && Boolean(_loc2_)))
                                                         {
                                                            §§push(§§pop() + _loc1_.toString());
                                                         }
                                                         §§pop().text = §§pop();
                                                         break;
                                                      }
                                                   }
                                                }
                                                §§goto(addr01d8);
                                             }
                                          }
                                       }
                                       §§goto(addr01a9);
                                    }
                                    §§goto(addr018e);
                                 }
                                 while(_loc3_++, !(_loc6_ && Boolean(_loc3_)));
                                 
                                 _loc4_ = HorizontalLayout(this.pagingList.layout).getScrollPositionDeltaToElement(Math.min(this.pagingList.dataProvider.length,this._iteration + 6));
                                 if(_loc4_)
                                 {
                                    if(_loc5_ || Boolean(_loc1_))
                                    {
                                       HorizontalLayout(this.pagingList.layout).horizontalScrollPosition = _loc4_.x;
                                       if(!(_loc6_ && Boolean(_loc2_)))
                                       {
                                          §§goto(addr0278);
                                       }
                                    }
                                    §§goto(addr0291);
                                 }
                                 addr0278:
                                 _loc2_.sort = this._sort;
                                 if(!_loc6_)
                                 {
                                    _loc2_.refresh();
                                    if(_loc5_)
                                    {
                                       addr0291:
                                       return _loc2_;
                                    }
                                 }
                                 §§goto(addr0293);
                              }
                              addr0293:
                              return null;
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr00ac);
            }
            §§goto(addr00c9);
         }
         §§goto(addr00e7);
      }
      
      private function updatePagingList() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:uint = 0;
         var _loc2_:IList = null;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            if(this._dataProvider != null)
            {
               if(_loc4_ || Boolean(_loc1_))
               {
                  _loc1_ = Math.ceil(this._dataProvider.length / this._iterationLength);
                  addr003d:
               }
               _loc2_ = new ArrayCollection();
               if(!_loc5_)
               {
                  _loc3_ = 1;
               }
               while(true)
               {
                  if(_loc3_ > _loc1_)
                  {
                     if(_loc4_)
                     {
                        this.pagingList.dataProvider = _loc2_;
                     }
                     break;
                  }
                  _loc2_.addItem(_loc3_);
                  if(_loc4_ || Boolean(this))
                  {
                     _loc3_++;
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003d);
      }
      
      public function get iterationLength() : uint
      {
         return this._iterationLength;
      }
      
      private function checkScrollButtons() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:uint = Math.ceil(this._dataProvider.length / this._iterationLength);
         if(!_loc2_)
         {
            this.listLeftButton.enabled = this._iteration > 0;
            if(!(_loc2_ && Boolean(this)))
            {
               addr005e:
               this.listRightButton.enabled = this._iteration < _loc1_ - 1;
            }
            return;
         }
         §§goto(addr005e);
      }
      
      public function set iterationLength(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._iterationLength = param1;
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super.partAdded(param1,param2);
            if(_loc3_ || Boolean(param2))
            {
               if(param2 == this.badgeSortButton)
               {
                  if(!_loc4_)
                  {
                     this.badgeSortButton.addEventListener(MouseEvent.CLICK,this.handleBadgeSortClick);
                     if(!(_loc3_ || Boolean(param2)))
                     {
                        addr00ad:
                        this.operationCountSortButton.addEventListener(MouseEvent.CLICK,this.handleOperationCountSortClick);
                        if(_loc4_)
                        {
                           this.listLeftButton.addEventListener(MouseEvent.CLICK,this.handleIterateLeft);
                           addr0117:
                           if(_loc4_ && _loc3_)
                           {
                           }
                        }
                     }
                  }
                  else
                  {
                     addr006e:
                     this.nameSortButton.addEventListener(MouseEvent.CLICK,this.handleNameSortClick);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else if(param2 == this.nameSortButton)
               {
                  if(_loc3_)
                  {
                     §§goto(addr006e);
                  }
               }
               else if(param2 == this.operationCountSortButton)
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr00ad);
                  }
                  §§goto(addr0117);
               }
               else if(param2 == this.pagingList)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     this.pagingList.addEventListener("rendererClick",this.handleRendererClick);
                     if(!(_loc3_ || Boolean(this)))
                     {
                        addr0154:
                        this.listRightButton.addEventListener(MouseEvent.CLICK,this.handleIterateRight);
                     }
                  }
               }
               else if(param2 == this.listLeftButton)
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0117);
                  }
                  else
                  {
                     §§goto(addr0154);
                  }
               }
               else if(param2 == this.listRightButton)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0154);
                  }
               }
               §§goto(addr0165);
            }
            §§goto(addr0117);
         }
         addr0165:
      }
      
      private function handleBadgeSortClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.sortField(this.badgeSortButton.selected,this.nameSortButton.selected,this.operationCountSortButton.selected,1);
            if(!(_loc2_ && _loc2_))
            {
               this._iteration = 0;
               if(_loc3_)
               {
                  this.dataProvider = this._dataProvider;
               }
            }
         }
      }
      
      private function handleNameSortClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.sortField(this.badgeSortButton.selected,this.nameSortButton.selected,this.operationCountSortButton.selected,2);
            if(!(_loc2_ && Boolean(param1)))
            {
               this._iteration = 0;
               if(_loc3_)
               {
                  addr0057:
                  this.dataProvider = this._dataProvider;
               }
               return;
            }
         }
         §§goto(addr0057);
      }
      
      private function handleOperationCountSortClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.sortField(this.badgeSortButton.selected,this.nameSortButton.selected,this.operationCountSortButton.selected,3);
            if(_loc2_)
            {
               this._iteration = 0;
               if(_loc2_ || _loc3_)
               {
                  addr0055:
                  this.dataProvider = this._dataProvider;
               }
            }
            return;
         }
         §§goto(addr0055);
      }
      
      private function handleRendererClick(param1:Event) : void
      {
      }
      
      private function sortField(param1:Boolean, param2:Boolean, param3:Boolean, param4:uint = 4) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         if(!_loc9_)
         {
            if(!(this._dataProvider is ArrayCollection))
            {
               if(!_loc9_)
               {
                  return;
               }
            }
         }
         this._sort = new Sort();
         var _loc5_:ISortField = new SortField("specialisationGfxId",true,!param1,false);
         var _loc6_:ISortField = new SortField("name",true,!param2,false);
         var _loc7_:ISortField = new SortField("operationsLeft",true,!param3,true);
         var _loc8_:* = param4;
         if(_loc10_ || param3)
         {
            §§push(1);
            if(!_loc9_)
            {
               §§push(_loc8_);
               if(!(_loc9_ && Boolean(this)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc10_ || param1)
                     {
                        §§push(0);
                        if(_loc10_ || param3)
                        {
                        }
                     }
                     else
                     {
                        addr0181:
                        §§push(1);
                        if(_loc9_ && param2)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(2);
                     if(_loc10_ || Boolean(this))
                     {
                        §§push(_loc8_);
                        if(_loc10_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc9_ && param1))
                              {
                                 §§goto(addr0181);
                              }
                              else
                              {
                                 addr01ab:
                                 §§push(2);
                                 if(_loc10_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(3);
                              if(!(_loc9_ && param3))
                              {
                                 addr01a7:
                                 addr01a5:
                                 if(§§pop() === _loc8_)
                                 {
                                    §§goto(addr01ab);
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                              }
                           }
                           §§goto(addr01d1);
                        }
                        §§goto(addr01a7);
                     }
                  }
                  addr01d1:
                  switch(§§pop())
                  {
                     case 0:
                        this._sort.fields = [_loc5_];
                        if(_loc9_ && param3)
                        {
                        }
                        addr01f2:
                        ArrayCollection(this._dataProvider).sort = this._sort;
                        if(!_loc9_)
                        {
                           addr0208:
                           ArrayCollection(this._dataProvider).refresh();
                        }
                        break;
                     case 1:
                        this._sort.fields = [_loc6_];
                        if(!(_loc9_ && param3))
                        {
                           §§goto(addr01f2);
                        }
                        §§goto(addr0208);
                     case 2:
                        this._sort.fields = [_loc7_];
                        if(_loc10_ || param1)
                        {
                        }
                        §§goto(addr01f2);
                     default:
                        this._sort.fields = [_loc5_,_loc6_,_loc7_];
                        if(_loc9_)
                        {
                           break;
                        }
                        §§goto(addr01f2);
                  }
                  return;
               }
               §§goto(addr01a7);
            }
            §§goto(addr01a5);
         }
         §§goto(addr01ab);
      }
      
      private function handleIterateLeft(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            var _loc2_:* = this;
            var _loc3_:* = _loc2_._iteration - 1;
            if(!_loc4_)
            {
               _loc2_._iteration = _loc3_;
            }
            if(_loc5_)
            {
               this.updatePagingList();
               if(_loc5_ || Boolean(_loc2_))
               {
                  addr0066:
                  super.dataProvider = this.currentIteration;
                  if(!_loc4_)
                  {
                     this.checkScrollButtons();
                  }
               }
            }
            return;
         }
         §§goto(addr0066);
      }
      
      private function handleIterateRight(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            var _loc2_:* = this;
            var _loc3_:* = _loc2_._iteration + 1;
            if(!_loc5_)
            {
               _loc2_._iteration = _loc3_;
            }
            if(_loc4_)
            {
               this.updatePagingList();
               if(_loc4_ || Boolean(_loc2_))
               {
                  super.dataProvider = this.currentIteration;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0081:
                     this.checkScrollButtons();
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0081);
            }
            addr0086:
            return;
         }
         §§goto(addr0081);
      }
      
      private function doubleClickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(param1.target is Group);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc2_ || _loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§goto(addr006e);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr006d);
                  }
               }
            }
            addr006e:
            §§goto(addr004c);
         }
         addr004c:
         §§push(param1.target is DynamicImageButton);
         if(!(_loc3_ && Boolean(param1)))
         {
            addr006d:
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(_loc2_)
            {
               this.handleIndexChange(null);
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr008a:
                  dispatchEvent(SELECT_ITEM_EVENT);
               }
            }
         }
      }
   }
}


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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  this.minWidth = 70;
                  §§goto(addr003f);
               }
               §§goto(addr0068);
            }
            §§goto(addr005c);
         }
         addr003f:
         if(_loc1_ || Boolean(this))
         {
            addr005c:
            this.minHeight = 268;
            if(_loc1_)
            {
               addr0068:
               this.mxmlContent = [this._QuestSideMenu_List1_i(),this._QuestSideMenu_Group2_i()];
               if(_loc1_)
               {
                  §§goto(addr0088);
               }
            }
            §§goto(addr0094);
         }
         addr0088:
         this.currentState = "normal";
         if(_loc1_)
         {
            addr0094:
            states = [new State({
               "name":"normal",
               "overrides":[]
            }),new State({
               "name":"disabled",
               "overrides":[]
            })];
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0049);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0049:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:Vector.<QuestDetailViewVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(RandomUtilities.isEqual(param1,this._data));
            if(_loc2_)
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
                        addr0050:
                        §§pop();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr006f);
                        }
                        §§goto(addr0078);
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0050);
            }
            addr006f:
            if(param1.length > 0)
            {
               if(_loc2_)
               {
                  addr0078:
                  this._dataIsDirty = true;
                  if(_loc2_)
                  {
                     this._data = param1;
                     if(_loc2_)
                     {
                        addr008c:
                        invalidateProperties();
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr008c);
               }
            }
            addr0091:
            return;
         }
         §§goto(addr0078);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc1_:* = false;
         var _loc2_:QuestDetailViewVo = null;
         var _loc3_:ArrayCollection = null;
         var _loc4_:QuestDetailViewVo = null;
         var _loc5_:QuestDetailViewVo = null;
         var _loc6_:Vector.<Number> = null;
         var _loc7_:* = 0;
         var _loc8_:ArrayCollection = null;
         var _loc9_:* = 0;
         var _loc10_:QuestDetailViewVo = null;
         if(!_loc14_)
         {
            super.commitProperties();
            if(_loc13_)
            {
               §§push(this._dataIsDirty);
               if(!(_loc14_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!(_loc14_ && Boolean(this)))
                     {
                        this._dataIsDirty = false;
                        if(!(_loc14_ && _loc1_))
                        {
                           addr008d:
                           _loc1_ = false;
                        }
                     }
                     addr008e:
                     var _loc11_:* = 0;
                     for each(_loc2_ in this._data)
                     {
                        if(_loc13_)
                        {
                           §§push(_loc2_.isQuestComplete);
                           if(_loc13_)
                           {
                              §§push(§§pop());
                              if(_loc13_ || Boolean(this))
                              {
                                 var _temp_5:* = §§pop();
                                 §§push(_temp_5);
                                 if(_temp_5)
                                 {
                                    if(!_loc14_)
                                    {
                                       §§pop();
                                       if(_loc13_ || _loc1_)
                                       {
                                          addr00e0:
                                          §§push(_loc2_.changed);
                                          if(!(_loc14_ && _loc1_))
                                          {
                                             addr00f2:
                                             §§push(§§pop());
                                             if(_loc13_ || Boolean(_loc3_))
                                             {
                                                addr0101:
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                if(!(_loc13_ || Boolean(_loc3_)))
                                                {
                                                   break;
                                                }
                                                §§push(true);
                                             }
                                          }
                                          addr0114:
                                          _loc1_ = §§pop();
                                       }
                                       break;
                                    }
                                 }
                                 §§goto(addr0101);
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr0114);
                        }
                        §§goto(addr00e0);
                     }
                     if(!(_loc14_ && Boolean(_loc2_)))
                     {
                        if(!_loc14_)
                        {
                           §§push(!this.itemList.dataProvider);
                           if(_loc13_ || _loc1_)
                           {
                              var _temp_12:* = §§pop();
                              §§push(_temp_12);
                              if(!_temp_12)
                              {
                                 if(!(_loc14_ && _loc1_))
                                 {
                                    addr0161:
                                    §§pop();
                                    if(_loc13_ || Boolean(_loc2_))
                                    {
                                       addr0178:
                                       addr0170:
                                       §§push(_loc1_);
                                       if(!_loc14_)
                                       {
                                          addr0177:
                                          §§push(§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc13_ || Boolean(_loc2_))
                                          {
                                             addr018a:
                                             this._data.sort(this.sortOnLastUpdate);
                                             if(!(_loc14_ && Boolean(_loc3_)))
                                             {
                                                _loc3_ = new ArrayCollection();
                                                if(!(_loc14_ && Boolean(_loc2_)))
                                                {
                                                   _loc11_ = 0;
                                                   if(!(_loc14_ && _loc1_))
                                                   {
                                                      for each(_loc4_ in this._data)
                                                      {
                                                         if(_loc13_ || Boolean(_loc3_))
                                                         {
                                                            _loc3_.addItem(_loc4_);
                                                         }
                                                      }
                                                   }
                                                   if(_loc13_)
                                                   {
                                                      addr0209:
                                                      this.itemList.dataProvider = _loc3_;
                                                   }
                                                   §§goto(addr04fc);
                                                }
                                                §§goto(addr0209);
                                             }
                                             else
                                             {
                                                addr033b:
                                                _loc8_ = this.itemList.dataProvider as ArrayCollection;
                                                _loc6_ = new Vector.<Number>();
                                                if(_loc13_ || Boolean(_loc3_))
                                                {
                                                   §§push(0);
                                                   if(!_loc14_)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(_loc9_);
                                                            if(_loc14_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop() >= _loc8_.length)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  loop8:
                                                                  while(_loc6_.length)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc13_)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= this.itemList.dataProvider.length)
                                                                        {
                                                                           if(_loc14_ && Boolean(_loc3_))
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc10_ = this.itemList.dataProvider.getItemAt(_loc9_) as QuestDetailViewVo;
                                                                           if(_loc10_.questID == _loc6_[0])
                                                                           {
                                                                              if(_loc14_ && Boolean(_loc2_))
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              this.itemList.dataProvider.removeItemAt(_loc9_);
                                                                              if(_loc13_ || _loc1_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_.shift();
                                                                                    continue loop8;
                                                                                 }
                                                                                 addr04ee:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc9_++;
                                                                              if(!_loc13_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              continue loop7;
                                                                           }
                                                                           addr04d0:
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr04fc:
                                                                  return;
                                                                  addr04f4:
                                                               }
                                                               §§goto(addr04ee);
                                                            }
                                                            else
                                                            {
                                                               _loc10_ = _loc8_.getItemAt(_loc9_) as QuestDetailViewVo;
                                                               if(!(_loc14_ && Boolean(this)))
                                                               {
                                                                  §§push(-1);
                                                                  if(!_loc14_)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc13_ || _loc1_)
                                                                        {
                                                                           addr03ba:
                                                                           _loc11_ = §§pop();
                                                                           if(!_loc14_)
                                                                           {
                                                                              for each(_loc5_ in this._data)
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    if(_loc10_.questID != _loc5_.questID)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc13_ || _loc1_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 §§push(_loc9_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 _loc7_ = §§pop();
                                                                              }
                                                                           }
                                                                           if(!_loc14_)
                                                                           {
                                                                              addr0418:
                                                                              if(_loc7_ == -1)
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr0424:
                                                                                 _loc6_.push(_loc10_.questID);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              addr0434:
                                                                              _loc9_++;
                                                                              continue;
                                                                           }
                                                                           §§goto(addr0424);
                                                                        }
                                                                        §§goto(addr0418);
                                                                     }
                                                                     §§goto(addr0434);
                                                                  }
                                                                  §§goto(addr03ba);
                                                               }
                                                               §§goto(addr0434);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc9_ = §§pop();
                                                            if(_loc13_)
                                                            {
                                                               §§goto(addr04d0);
                                                            }
                                                            §§goto(addr04ee);
                                                         }
                                                      }
                                                      §§goto(addr04f4);
                                                   }
                                                   §§goto(addr04d2);
                                                }
                                                §§goto(addr04f4);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc11_ = 0;
                                          if(!(_loc14_ && Boolean(_loc2_)))
                                          {
                                             addr0227:
                                             loop9:
                                             for each(_loc5_ in this._data)
                                             {
                                                if(!(_loc14_ && Boolean(_loc3_)))
                                                {
                                                   _loc7_ = -1;
                                                }
                                                _loc8_ = this.itemList.dataProvider as ArrayCollection;
                                                if(!_loc14_)
                                                {
                                                   §§push(0);
                                                   if(!_loc14_)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(!(_loc13_ || _loc1_))
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         if(!(_loc13_ || _loc1_))
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() >= _loc8_.length)
                                                         {
                                                            if(_loc13_ || _loc1_)
                                                            {
                                                               §§push(_loc7_);
                                                               break;
                                                            }
                                                            continue loop9;
                                                         }
                                                         _loc10_ = _loc8_.getItemAt(_loc9_) as QuestDetailViewVo;
                                                         if(_loc10_.questID == _loc5_.questID)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc9_);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                            _loc7_ = §§pop();
                                                            if(!(_loc13_ || Boolean(this)))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         _loc9_++;
                                                      }
                                                   }
                                                   if(§§pop() == -1)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         this.itemList.dataProvider.addItemAt(_loc5_,0);
                                                         if(_loc13_ || Boolean(this))
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.itemList.dataProvider.setItemAt(_loc5_,_loc7_);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr033b);
                                    }
                                    §§goto(addr018a);
                                 }
                                 §§goto(addr0177);
                              }
                              §§goto(addr0178);
                           }
                           §§goto(addr0161);
                        }
                        §§goto(addr0170);
                     }
                     §§goto(addr0227);
                  }
                  §§goto(addr04fc);
               }
               §§goto(addr008d);
            }
         }
         §§goto(addr008e);
      }
      
      private function sortOnLastUpdate(param1:QuestDetailViewVo, param2:QuestDetailViewVo) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(param1.lastUpdated);
            if(_loc3_ || _loc3_)
            {
               §§push(param2.lastUpdated);
               if(!_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(-1);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr006c:
                        addr0074:
                        addr0070:
                        if(param1.lastUpdated < param2.lastUpdated)
                        {
                           if(!_loc4_)
                           {
                              §§push(1);
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§goto(addr008d);
                              }
                           }
                           else
                           {
                              addr008e:
                              return 0;
                           }
                           return §§pop();
                        }
                        §§goto(addr008e);
                     }
                     addr008d:
                     return §§pop();
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0074);
            }
            §§goto(addr0070);
         }
         §§goto(addr008e);
      }
      
      private function _QuestSideMenu_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_)
         {
            _loc1_.styleName = "sideMenu";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.itemRenderer = this._QuestSideMenu_ClassFactory1_c();
               if(!_loc3_)
               {
                  _loc1_.setStyle("skinClass",QuestSideListSkin);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "itemList";
                     if(_loc2_ || _loc3_)
                     {
                        addr0083:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr0098);
                              }
                           }
                           §§goto(addr00a2);
                        }
                        addr0098:
                        this.itemList = _loc1_;
                        if(!_loc3_)
                        {
                           addr00a2:
                           BindingManager.executeBindings(this,"itemList",this.itemList);
                        }
                        §§goto(addr00af);
                     }
                     addr00af:
                     return _loc1_;
                  }
               }
               §§goto(addr00a2);
            }
            §§goto(addr0098);
         }
         §§goto(addr0083);
      }
      
      private function _QuestSideMenu_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.generator = QuestSideItemRenderer;
         }
         return _loc1_;
      }
      
      private function _QuestSideMenu_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 16;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.left = 70;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "elementContainer";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr0090:
                              this.elementContainer = _loc1_;
                              if(_loc3_)
                              {
                                 addr009a:
                                 BindingManager.executeBindings(this,"elementContainer",this.elementContainer);
                              }
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0090);
                  }
                  addr00a7:
                  return _loc1_;
               }
               §§goto(addr0090);
            }
            §§goto(addr009a);
         }
         §§goto(addr0090);
      }
      
      [Bindable(event="propertyChange")]
      public function get elementContainer() : Group
      {
         return this._1526896411elementContainer;
      }
      
      public function set elementContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1526896411elementContainer;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1526896411elementContainer = param1;
                  addr0042:
                  if(_loc4_ || Boolean(this))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0072);
               }
               addr0063:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elementContainer",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
            addr0081:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1177280081itemList;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1177280081itemList = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
         }
         addr007b:
      }
   }
}


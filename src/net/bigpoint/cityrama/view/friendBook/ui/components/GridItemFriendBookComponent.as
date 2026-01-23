package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.GridItemFriendBookEmptySkin;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.GridItemFriendBookNormalOwn;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.GridItemFriendBookNormalSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.RichText;
   import spark.components.supportClasses.ButtonBase;
   
   public class GridItemFriendBookComponent extends ButtonBase
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _skinParts = {
            "image":true,
            "infoIcon":false,
            "costGroup":false,
            "iconDisplay":false,
            "friendLevelStarComponent":false,
            "itemLabel":false,
            "labelDisplay":false,
            "backgroundPrint":false,
            "newIcon":false
         };
      }
      
      private var _itemIndex:int;
      
      private var _data:FriendVo;
      
      private var _isDirty:Boolean;
      
      public var image:BriskImageDynaLib;
      
      public var backgroundPrint:BriskImageDynaLib;
      
      public var itemLabel:RichText;
      
      public var costGroup:Group;
      
      public var infoIcon:BriskImageDynaLib;
      
      public var newIcon:BriskImageDynaLib;
      
      public var friendLevelStarComponent:FriendLevelStarComponent;
      
      public function GridItemFriendBookComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set data(param1:FriendVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(RandomUtilities.isUnEqual(param1,this._data));
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     this._isDirty = true;
                     if(!(_loc3_ && _loc3_))
                     {
                        this._data = param1;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this._data);
                           if(_loc2_ || Boolean(this))
                           {
                              §§push(§§pop().isEmpty);
                              if(!_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || Boolean(param1))
                                    {
                                       setStyle("skinClass",GridItemFriendBookEmptySkin);
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr00c1:
                                       setStyle("skinClass",GridItemFriendBookNormalOwn);
                                       if(_loc2_ || Boolean(param1))
                                       {
                                       }
                                    }
                                    addr00ed:
                                    invalidateProperties();
                                 }
                                 else
                                 {
                                    addr00a4:
                                    addr00a1:
                                    if(this._data.isMe)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§goto(addr00c1);
                                       }
                                    }
                                    else
                                    {
                                       setStyle("skinClass",GridItemFriendBookNormalSkin);
                                       if(_loc2_)
                                       {
                                          §§goto(addr00ed);
                                       }
                                    }
                                 }
                                 §§goto(addr00f2);
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr00c1);
                     }
                  }
                  §§goto(addr00ed);
               }
               addr00f2:
               return;
            }
            §§goto(addr00a4);
         }
         §§goto(addr00ed);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc2_))
            {
               §§push(this._isDirty);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              §§pop();
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(this._data);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc2_)
                                    {
                                       §§goto(addr007f);
                                    }
                                    §§goto(addr00fb);
                                 }
                                 §§goto(addr00a3);
                              }
                              §§goto(addr0092);
                           }
                           §§goto(addr0185);
                        }
                        addr007f:
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              this._isDirty = false;
                              if(!_loc2_)
                              {
                                 addr0092:
                                 §§push(this._data);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00a3:
                                    §§push(§§pop());
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       var _temp_10:* = §§pop();
                                       §§push(_temp_10);
                                       §§push(_temp_10);
                                       if(_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                §§pop();
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(this._data);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr00df:
                                                      §§push(§§pop().isEmpty);
                                                      if(_loc3_)
                                                      {
                                                         addr00e7:
                                                         §§push(!§§pop());
                                                         if(_loc3_)
                                                         {
                                                            addr00fb:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  this.itemLabel.text = this._data.name;
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(this.friendLevelStarComponent);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§pop().levelLabel.text = String(this._data.lvl);
                                                                        if(!(_loc2_ && Boolean(this)))
                                                                        {
                                                                           addr0149:
                                                                           this.friendLevelStarComponent.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.level");
                                                                           addr0145:
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr015c:
                                                                              §§push(this.newIcon);
                                                                              if(_loc3_ || Boolean(this))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       addr017e:
                                                                                       addr0185:
                                                                                       addr0182:
                                                                                       addr0186:
                                                                                       if(this._data.isItemNew == true)
                                                                                       {
                                                                                          if(!(_loc2_ && _loc1_))
                                                                                          {
                                                                                             §§push(this.newIcon);
                                                                                             if(_loc3_ || Boolean(this))
                                                                                             {
                                                                                                addr01a8:
                                                                                                §§push(this.newIcon);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(true);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      var _temp_19:* = §§pop();
                                                                                                      §§push(_temp_19);
                                                                                                      §§push(_temp_19);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         var _loc1_:* = §§pop();
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§pop().includeInLayout = §§pop();
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(_loc1_);
                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§pop().visible = §§pop();
                                                                                                                     if(_loc2_ && _loc2_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr020d:
                                                                                                                     §§pop().visible = §§pop();
                                                                                                                  }
                                                                                                                  §§goto(addr020f);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr020b:
                                                                                                               }
                                                                                                               §§goto(addr020d);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr020a:
                                                                                                               §§push(_loc1_);
                                                                                                            }
                                                                                                            §§goto(addr020b);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0208:
                                                                                                            §§pop().includeInLayout = §§pop();
                                                                                                         }
                                                                                                         §§goto(addr020a);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0207:
                                                                                                         _loc1_ = §§pop();
                                                                                                      }
                                                                                                      §§goto(addr0208);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0206:
                                                                                                      var _temp_22:* = §§pop();
                                                                                                      §§push(_temp_22);
                                                                                                      §§push(_temp_22);
                                                                                                   }
                                                                                                   §§goto(addr0207);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0205:
                                                                                                   §§push(false);
                                                                                                }
                                                                                                §§goto(addr0206);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0201:
                                                                                                §§push(this.newIcon);
                                                                                             }
                                                                                             §§goto(addr0205);
                                                                                          }
                                                                                          §§goto(addr020f);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(this.newIcon);
                                                                                       }
                                                                                       §§goto(addr0201);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr020f);
                                                                              }
                                                                              §§goto(addr01a8);
                                                                           }
                                                                        }
                                                                        §§goto(addr017e);
                                                                     }
                                                                     §§goto(addr0149);
                                                                  }
                                                                  §§goto(addr0145);
                                                               }
                                                               §§goto(addr017e);
                                                            }
                                                            §§goto(addr020f);
                                                         }
                                                      }
                                                      §§goto(addr0185);
                                                   }
                                                   §§goto(addr0182);
                                                }
                                                §§goto(addr020f);
                                             }
                                             §§goto(addr00e7);
                                          }
                                          §§goto(addr00fb);
                                       }
                                       §§goto(addr0186);
                                    }
                                    §§goto(addr00e7);
                                 }
                                 §§goto(addr00df);
                              }
                              §§goto(addr0145);
                           }
                           §§goto(addr015c);
                        }
                        addr020f:
                        return;
                     }
                     §§goto(addr0186);
                  }
                  §§goto(addr0185);
               }
               §§goto(addr00e7);
            }
            §§goto(addr017e);
         }
         §§goto(addr015c);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            super.partAdded(param1,param2);
         }
      }
      
      public function set itemIndex(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._itemIndex != param1)
            {
               if(_loc3_)
               {
                  this._itemIndex = param1;
                  if(!_loc2_)
                  {
                     addr0030:
                     invalidateProperties();
                  }
               }
            }
            return;
         }
         §§goto(addr0030);
      }
   }
}


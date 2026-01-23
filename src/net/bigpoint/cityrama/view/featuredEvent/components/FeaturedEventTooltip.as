package net.bigpoint.cityrama.view.featuredEvent.components
{
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedEventSideMenuVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.featuredEvent.skins.FeaturedEventMultipleTooltipSkin;
   import net.bigpoint.cityrama.view.featuredEvent.skins.FeaturedEventSingleTooltipSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class FeaturedEventTooltip extends SkinnableComponent
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && FeaturedEventTooltip))
      {
         _skinParts = {
            "infoText":false,
            "header":true,
            "progressTimer":false,
            "headerIcon":true,
            "multipleEventList":false
         };
      }
      
      public var header:LocaLabel;
      
      public var headerIcon:BriskImageDynaLib;
      
      public var infoText:LocaLabel;
      
      public var progressTimer:TimerBarComponent;
      
      public var multipleEventList:List;
      
      private var _data:FeaturedEventSideMenuVo;
      
      private var _isDirty:Boolean;
      
      public function FeaturedEventTooltip()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.commitProperties();
            if(!(_loc3_ && _loc3_))
            {
               §§push(this._data);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§pop();
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(this._isDirty);
                              if(_loc2_ || _loc3_)
                              {
                                 addr0070:
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    addr0076:
                                    if(§§pop())
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          this._isDirty = false;
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(this.header);
                                             if(_loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr00af:
                                                      this.header.text = this._data.header;
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         addr00c5:
                                                         §§push(this.headerIcon);
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr00e3:
                                                                  this.headerIcon.briskDynaVo = this._data.headerIcon;
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr00f2:
                                                                     §§push(this._data);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(§§pop().wheelRewardsWaiting);
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0103:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc2_ || Boolean(this))
                                                                              {
                                                                                 §§push(this.infoText);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          §§push(this.infoText);
                                                                                          if(_loc2_ || _loc1_)
                                                                                          {
                                                                                             §§push(this._data);
                                                                                             if(_loc2_ || _loc1_)
                                                                                             {
                                                                                                §§push(§§pop().infoText);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§pop().text = §§pop();
                                                                                                   if(!(_loc3_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr0173:
                                                                                                      §§push(this.progressTimer);
                                                                                                      if(_loc2_ || _loc1_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr018d:
                                                                                                               §§push(this.progressTimer);
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(this.progressTimer);
                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(false);
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        var _temp_20:* = §§pop();
                                                                                                                        §§push(_temp_20);
                                                                                                                        §§push(_temp_20);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           var _loc1_:* = §§pop();
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§pop().visible = §§pop();
                                                                                                                              if(_loc2_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(_loc1_);
                                                                                                                                 if(!(_loc3_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       §§pop().includeInLayout = §§pop();
                                                                                                                                       if(_loc3_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          addr0262:
                                                                                                                                          this.infoText.text = this._data.infoText;
                                                                                                                                          addr025f:
                                                                                                                                          addr0257:
                                                                                                                                          addr025b:
                                                                                                                                          if(_loc2_ || Boolean(this))
                                                                                                                                          {
                                                                                                                                             addr0271:
                                                                                                                                             §§push(this.progressTimer);
                                                                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                addr0282:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      addr0293:
                                                                                                                                                      §§push(this.progressTimer);
                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr02b8:
                                                                                                                                                         this.progressTimer.visible = _loc1_ = true;
                                                                                                                                                         addr02bd:
                                                                                                                                                         §§pop().includeInLayout = _loc1_;
                                                                                                                                                         addr02bb:
                                                                                                                                                         addr02ba:
                                                                                                                                                         if(_loc2_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr02d0:
                                                                                                                                                            this.progressTimer.data = this._data.timerVo;
                                                                                                                                                            addr02cc:
                                                                                                                                                         }
                                                                                                                                                         addr02d9:
                                                                                                                                                         return;
                                                                                                                                                         addr02b1:
                                                                                                                                                         addr02b7:
                                                                                                                                                         addr02b6:
                                                                                                                                                         addr02b5:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02d0);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02cc);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02d9);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02b1);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0293);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02d9);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02bd);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02bb);
                                                                                                                              }
                                                                                                                              §§goto(addr02ba);
                                                                                                                           }
                                                                                                                           §§goto(addr02b8);
                                                                                                                        }
                                                                                                                        §§goto(addr02b7);
                                                                                                                     }
                                                                                                                     §§goto(addr02b6);
                                                                                                                  }
                                                                                                                  §§goto(addr02b5);
                                                                                                               }
                                                                                                               §§goto(addr02d0);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02d9);
                                                                                                      }
                                                                                                      §§goto(addr0282);
                                                                                                   }
                                                                                                   §§goto(addr02d9);
                                                                                                }
                                                                                                §§goto(addr0262);
                                                                                             }
                                                                                             §§goto(addr025f);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr024e:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§goto(addr0257);
                                                                                                }
                                                                                                §§goto(addr02cc);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0271);
                                                                                       }
                                                                                       §§goto(addr02d9);
                                                                                    }
                                                                                    §§goto(addr0173);
                                                                                 }
                                                                                 §§goto(addr024e);
                                                                              }
                                                                              §§goto(addr02d9);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0207:
                                                                              addr0204:
                                                                              if(this._data.multipleEvents)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(this.multipleEventList)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr021d:
                                                                                          this.multipleEventList.dataProvider = this._data.multipleEventListData;
                                                                                          if(_loc3_ && Boolean(this))
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr0271);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr02d9);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.infoText);
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr024e);
                                                                                 }
                                                                                 §§goto(addr025b);
                                                                              }
                                                                           }
                                                                           §§goto(addr025b);
                                                                        }
                                                                        §§goto(addr0207);
                                                                     }
                                                                     §§goto(addr0204);
                                                                  }
                                                                  §§goto(addr02cc);
                                                               }
                                                               §§goto(addr02d9);
                                                            }
                                                            §§goto(addr00f2);
                                                         }
                                                         §§goto(addr00e3);
                                                      }
                                                      §§goto(addr018d);
                                                   }
                                                   §§goto(addr0271);
                                                }
                                                §§goto(addr00c5);
                                             }
                                             §§goto(addr00af);
                                          }
                                          §§goto(addr0257);
                                       }
                                       §§goto(addr021d);
                                    }
                                    §§goto(addr02d9);
                                 }
                                 §§goto(addr0207);
                              }
                              §§goto(addr0103);
                           }
                           §§goto(addr0173);
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0204);
            }
            §§goto(addr0271);
         }
         §§goto(addr018d);
      }
      
      public function set data(param1:FeaturedEventSideMenuVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(RandomUtilities.isEqual(param1,this._data));
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._data = param1;
                     if(!_loc2_)
                     {
                        this._isDirty = true;
                        if(_loc3_ || Boolean(param1))
                        {
                           §§goto(addr0060);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr0078);
                  }
                  addr0060:
                  addr0067:
                  if(this._data.multipleEvents)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        setStyle("skinClass",FeaturedEventMultipleTooltipSkin);
                        addr0078:
                        if(_loc3_ || _loc3_)
                        {
                           addr00b8:
                           invalidateProperties();
                        }
                     }
                  }
                  else
                  {
                     setStyle("skinClass",FeaturedEventSingleTooltipSkin);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr00b8);
                     }
                  }
               }
               §§goto(addr00bd);
            }
            §§goto(addr0067);
         }
         addr00bd:
      }
   }
}


package net.bigpoint.cityrama.view.assistants.ui.components
{
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorSideMenuVo;
   import net.bigpoint.cityrama.view.assistants.ui.skins.RentCollectorHireInfoSkin;
   import net.bigpoint.cityrama.view.assistants.ui.skins.RentCollectorIdleInfoSkin;
   import net.bigpoint.cityrama.view.assistants.ui.skins.RentCollectorRunningInfoSkin;
   import net.bigpoint.cityrama.view.assistants.ui.skins.RentCollectorSuccessSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class RentCollectorInfoComponent extends SkinnableComponent
   {
      
      public static const IDLE_INFO:String = "IDLE_INFO";
      
      public static const HIRE_INFO:String = "HIRE_INFO";
      
      public static const RUNNING_INFO:String = "RUNNING_INFO";
      
      public static const SUCCESS:String = "SUCCESS";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || RentCollectorInfoComponent)
      {
         IDLE_INFO = "IDLE_INFO";
         if(!(_loc2_ && RentCollectorInfoComponent))
         {
            HIRE_INFO = "HIRE_INFO";
            if(!_loc2_)
            {
               addr004b:
               RUNNING_INFO = "RUNNING_INFO";
               if(_loc1_)
               {
                  SUCCESS = "SUCCESS";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0079:
                     _skinParts = {
                        "infoText":false,
                        "saleIcon":false,
                        "costLabel":false,
                        "ppAmount":false,
                        "progressTimer":false,
                        "vcAmount":false,
                        "header":true,
                        "epAmount":false,
                        "attentionIcon":false
                     };
                  }
                  return;
               }
            }
            §§goto(addr0079);
         }
      }
      §§goto(addr004b);
      
      public var header:LocaLabel;
      
      public var infoText:LocaLabel;
      
      public var progressTimer:TimerBarComponent;
      
      public var costLabel:LocaLabel;
      
      public var vcAmount:LocaLabel;
      
      public var ppAmount:LocaLabel;
      
      public var epAmount:LocaLabel;
      
      public var attentionIcon:BriskImageDynaLib;
      
      public var saleIcon:BriskImageDynaLib;
      
      private var _data:RentCollectorSideMenuVo;
      
      private var _isDirty:Boolean;
      
      public function RentCollectorInfoComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(Boolean(this._data));
               if(!(_loc2_ && Boolean(this)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0044:
                        §§pop();
                        if(_loc3_)
                        {
                           §§goto(addr0054);
                        }
                        §§goto(addr04e7);
                     }
                  }
                  addr0054:
                  §§push(this._isDirty);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0065:
                        this._isDirty = false;
                        if(_loc3_)
                        {
                           addr006f:
                           this.header.text = LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name.capital");
                        }
                     }
                     addr04e7:
                     §§push(this._data);
                     loop0:
                     while(true)
                     {
                        var _loc1_:* = §§pop().currentState;
                        if(!_loc2_)
                        {
                           §§push(IDLE_INFO);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(_loc1_);
                              if(_loc3_ || Boolean(this))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(0);
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr0545:
                                       §§push(1);
                                       if(_loc2_ && _loc2_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(HIRE_INFO);
                                    if(_loc3_)
                                    {
                                       addr052e:
                                       §§push(_loc1_);
                                       if(_loc3_ || Boolean(this))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                §§goto(addr0545);
                                             }
                                             else
                                             {
                                                addr0595:
                                                §§push(3);
                                                if(_loc3_)
                                                {
                                                }
                                             }
                                             addr05ac:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(this.infoText);
                                                   if(_loc3_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop0;
                                                      }
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(this.infoText);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(LocaUtils.getString(String("rcl.misc.rentCollector"),String("rcl.misc.rentCollector.flavour.idle")));
                                                            if(_loc3_)
                                                            {
                                                               §§pop().text = §§pop();
                                                               if(_loc2_ && Boolean(this))
                                                               {
                                                               }
                                                               break loop0;
                                                            }
                                                            addr0118:
                                                            §§pop().text = §§pop();
                                                            if(!(_loc2_ && Boolean(_loc1_)))
                                                            {
                                                               addr0127:
                                                               §§push(this.attentionIcon);
                                                               if(!(_loc2_ && Boolean(_loc1_)))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc2_ && Boolean(_loc1_)))
                                                                     {
                                                                        addr014d:
                                                                        §§push(this.attentionIcon);
                                                                        §§push(this.attentionIcon);
                                                                        §§push(this._data.saleActive);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                        }
                                                                        §§pop().visible = _loc1_ = §§pop();
                                                                        §§pop().includeInLayout = _loc1_;
                                                                        if(_loc3_)
                                                                        {
                                                                           addr016c:
                                                                           §§push(this.saleIcon);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr018a:
                                                                                 var _temp_18:* = this.saleIcon;
                                                                                 this.saleIcon.visible = _loc1_ = this._data.saleActive;
                                                                                 _temp_18.includeInLayout = _loc1_;
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 addr0304:
                                                                                 §§push(this.ppAmount);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc3_ || _loc1_)
                                                                                       {
                                                                                          addr031e:
                                                                                          addr03bf:
                                                                                          §§push(this.ppAmount);
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             addr03c3:
                                                                                             addr032f:
                                                                                             §§push(this.ppAmount);
                                                                                             if(!(_loc2_ && _loc1_))
                                                                                             {
                                                                                                §§push(false);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   var _temp_22:* = §§pop();
                                                                                                   §§push(_temp_22);
                                                                                                   §§push(_temp_22);
                                                                                                   if(_loc3_ || _loc1_)
                                                                                                   {
                                                                                                      _loc1_ = §§pop();
                                                                                                      addr03c6:
                                                                                                      if(!(_loc2_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§pop().visible = §§pop();
                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr04ca:
                                                                                                                  this.epAmount.text = LocaUtils.getThousendSeperatedNumber(this._data.collectedEP);
                                                                                                                  addr04c6:
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               addr03cb:
                                                                                                               §§pop().visible = §§pop();
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               addr03d6:
                                                                                                               this.ppAmount.text = LocaUtils.getThousendSeperatedNumber(this._data.collectedPP);
                                                                                                               addr03d2:
                                                                                                               if(_loc3_ || _loc2_)
                                                                                                               {
                                                                                                                  addr03f2:
                                                                                                                  §§push(this.epAmount);
                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                     addr040c:
                                                                                                                     §§push(this.epAmount);
                                                                                                                     if(_loc3_ || Boolean(this))
                                                                                                                     {
                                                                                                                        §§push(this.epAmount);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           if(_loc3_ || Boolean(this))
                                                                                                                           {
                                                                                                                              var _temp_30:* = §§pop();
                                                                                                                              §§push(_temp_30);
                                                                                                                              §§push(_temp_30);
                                                                                                                              if(!(_loc2_ && _loc2_))
                                                                                                                              {
                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    §§pop().includeInLayout = §§pop();
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§pop().visible = §§pop();
                                                                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                §§push(this._data);
                                                                                                                                                if(!(_loc3_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                addr0489:
                                                                                                                                                addr0487:
                                                                                                                                                if(§§pop().collectedEP <= 0)
                                                                                                                                                {
                                                                                                                                                   break loop0;
                                                                                                                                                }
                                                                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr049a:
                                                                                                                                                   §§push(this.epAmount);
                                                                                                                                                   if(_loc3_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr04b2:
                                                                                                                                                      this.epAmount.includeInLayout = _loc1_ = true;
                                                                                                                                                      addr04b7:
                                                                                                                                                      §§pop().visible = _loc1_;
                                                                                                                                                      addr04b5:
                                                                                                                                                      addr04b4:
                                                                                                                                                      if(!(_loc3_ || _loc2_))
                                                                                                                                                      {
                                                                                                                                                         break loop0;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04c6);
                                                                                                                                                      addr04b1:
                                                                                                                                                      addr04b0:
                                                                                                                                                      addr04af:
                                                                                                                                                      addr04ab:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04ca);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr04c6);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04b7);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04b5);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04b4);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04b2);
                                                                                                                              }
                                                                                                                              §§goto(addr04b1);
                                                                                                                           }
                                                                                                                           §§goto(addr04b0);
                                                                                                                        }
                                                                                                                        §§goto(addr04af);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr04ab);
                                                                                                               }
                                                                                                               §§goto(addr040c);
                                                                                                            }
                                                                                                            addr03c9:
                                                                                                            §§goto(addr03cb);
                                                                                                         }
                                                                                                         addr03c8:
                                                                                                         §§goto(addr03c9);
                                                                                                         §§push(_loc1_);
                                                                                                      }
                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                      §§goto(addr03c8);
                                                                                                   }
                                                                                                   addr03c5:
                                                                                                   _loc1_ = §§pop();
                                                                                                   §§goto(addr03c6);
                                                                                                }
                                                                                                addr03c4:
                                                                                                var _temp_38:* = §§pop();
                                                                                                §§goto(addr03c5);
                                                                                                §§push(_temp_38);
                                                                                                §§push(_temp_38);
                                                                                             }
                                                                                             §§goto(addr03c4);
                                                                                             §§push(true);
                                                                                          }
                                                                                          §§goto(addr03c3);
                                                                                          §§push(this.ppAmount);
                                                                                       }
                                                                                       §§goto(addr040c);
                                                                                    }
                                                                                    §§goto(addr03f2);
                                                                                 }
                                                                                 §§goto(addr032f);
                                                                              }
                                                                              §§goto(addr049a);
                                                                           }
                                                                           §§goto(addr018a);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01ce:
                                                                           this.progressTimer.data = this._data.timerVo;
                                                                           addr01ca:
                                                                           if(!(_loc3_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr01e4:
                                                                           §§push(this.infoText);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              addr01f5:
                                                                              if(!§§pop())
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              if(_loc2_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              §§push(this.infoText);
                                                                           }
                                                                           addr0202:
                                                                           this.infoText.visible = _loc1_ = false;
                                                                           §§pop().includeInLayout = _loc1_;
                                                                           if(!_loc2_)
                                                                           {
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                        §§goto(addr049a);
                                                                     }
                                                                     §§goto(addr031e);
                                                                  }
                                                                  §§goto(addr016c);
                                                               }
                                                               §§goto(addr014d);
                                                            }
                                                            else
                                                            {
                                                               addr02f0:
                                                               this.vcAmount.text = LocaUtils.getThousendSeperatedNumber(this._data.collectedVC);
                                                               addr02ec:
                                                               if(_loc3_)
                                                               {
                                                                  §§goto(addr0304);
                                                               }
                                                            }
                                                            §§goto(addr040c);
                                                         }
                                                         else
                                                         {
                                                            addr00e0:
                                                            if(§§pop())
                                                            {
                                                               if(_loc3_ || Boolean(this))
                                                               {
                                                                  §§push(this.infoText);
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     addr0102:
                                                                     §§goto(addr0118);
                                                                     §§push(LocaUtils.getString(String("rcl.misc.rentCollector"),String("rcl.misc.rentCollector.flavour.offers")));
                                                                  }
                                                                  §§goto(addr0202);
                                                               }
                                                               §§goto(addr03d2);
                                                            }
                                                         }
                                                         §§goto(addr0127);
                                                      }
                                                      else
                                                      {
                                                         addr0283:
                                                         §§push(this._data);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            §§push(§§pop().collectedVC);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(0);
                                                               if(_loc3_)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(this.vcAmount);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           addr02d8:
                                                                           this.vcAmount.includeInLayout = _loc1_ = true;
                                                                           addr02dd:
                                                                           §§pop().visible = _loc1_;
                                                                           addr02db:
                                                                           addr02da:
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              §§goto(addr02ec);
                                                                           }
                                                                           §§goto(addr031e);
                                                                           addr02d7:
                                                                           addr02d6:
                                                                           addr02d5:
                                                                           addr02d1:
                                                                        }
                                                                        §§goto(addr02f0);
                                                                     }
                                                                     addr03ae:
                                                                     §§push(this.ppAmount);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§goto(addr03bf);
                                                                     }
                                                                     §§goto(addr03d6);
                                                                  }
                                                                  §§goto(addr0304);
                                                               }
                                                               addr039d:
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§goto(addr03ae);
                                                                  }
                                                                  §§goto(addr04c6);
                                                               }
                                                               §§goto(addr03f2);
                                                            }
                                                            addr0396:
                                                            §§push(0);
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr039d);
                                                            }
                                                            §§goto(addr0489);
                                                         }
                                                         addr038e:
                                                         §§push(§§pop().collectedPP);
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr0396);
                                                         }
                                                      }
                                                      §§goto(addr0487);
                                                   }
                                                   §§goto(addr01f5);
                                                case 1:
                                                   §§push(this.infoText);
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr00e0);
                                                   }
                                                   §§goto(addr0102);
                                                case 2:
                                                   §§push(this.progressTimer);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc3_ || _loc1_))
                                                         {
                                                            break loop0;
                                                         }
                                                         §§goto(addr01ca);
                                                      }
                                                      §§goto(addr01e4);
                                                   }
                                                   §§goto(addr01ce);
                                                case 3:
                                                   §§push(this.vcAmount);
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(this.vcAmount);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(this.vcAmount);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(false);
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     var _temp_52:* = §§pop();
                                                                     §§push(_temp_52);
                                                                     §§push(_temp_52);
                                                                     if(!_loc2_)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop().includeInLayout = §§pop();
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§pop().visible = §§pop();
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§goto(addr0283);
                                                                                    }
                                                                                    §§goto(addr0304);
                                                                                 }
                                                                                 §§goto(addr02dd);
                                                                              }
                                                                              §§goto(addr02db);
                                                                           }
                                                                           §§goto(addr02da);
                                                                        }
                                                                        §§goto(addr02d8);
                                                                     }
                                                                     §§goto(addr02d7);
                                                                  }
                                                                  §§goto(addr02d6);
                                                               }
                                                               §§goto(addr02d5);
                                                            }
                                                            §§goto(addr02f0);
                                                         }
                                                         §§goto(addr040c);
                                                      }
                                                      §§goto(addr0304);
                                                   }
                                                   §§goto(addr02d1);
                                                default:
                                                   break loop0;
                                             }
                                             §§push(this._data);
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr038e);
                                          }
                                          else
                                          {
                                             §§push(RUNNING_INFO);
                                             if(!_loc2_)
                                             {
                                                §§push(_loc1_);
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   addr0579:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr0582:
                                                         §§push(2);
                                                         if(_loc3_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0595);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0591:
                                                      addr0590:
                                                      if(SUCCESS === _loc1_)
                                                      {
                                                         §§goto(addr0595);
                                                      }
                                                      else
                                                      {
                                                         §§push(4);
                                                      }
                                                   }
                                                   §§goto(addr05ac);
                                                }
                                                §§goto(addr0591);
                                             }
                                             §§goto(addr0590);
                                          }
                                       }
                                       §§goto(addr0591);
                                    }
                                    §§goto(addr0590);
                                 }
                                 §§goto(addr05ac);
                              }
                              §§goto(addr0579);
                           }
                           §§goto(addr052e);
                        }
                        §§goto(addr0582);
                     }
                  }
                  return;
               }
               §§goto(addr0044);
            }
            §§goto(addr0065);
         }
         §§goto(addr006f);
      }
      
      public function set data(param1:RentCollectorSideMenuVo) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  addr002d:
                  this._data = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0040:
                     this._isDirty = true;
                  }
                  var _loc2_:* = this._data.currentState;
                  if(!_loc4_)
                  {
                     §§push(IDLE_INFO);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§push(0);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0165:
                                 §§push(2);
                                 if(_loc4_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(HIRE_INFO);
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§push(_loc2_);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(1);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0165);
                                       }
                                    }
                                    else
                                    {
                                       §§push(RUNNING_INFO);
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          addr0155:
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                             addr015b:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr0165);
                                                }
                                                else
                                                {
                                                   addr0179:
                                                   §§push(3);
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr01a4);
                                             }
                                             else
                                             {
                                                §§goto(addr0175);
                                             }
                                          }
                                          addr0175:
                                          §§goto(addr0174);
                                       }
                                       addr0174:
                                       if(SUCCESS === _loc2_)
                                       {
                                          §§goto(addr0179);
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                       §§goto(addr01a4);
                                    }
                                    §§goto(addr01a4);
                                 }
                                 §§goto(addr015b);
                              }
                              §§goto(addr0155);
                           }
                           addr01a4:
                           switch(§§pop())
                           {
                              case 0:
                                 setStyle("skinClass",RentCollectorIdleInfoSkin);
                                 if(_loc4_ && Boolean(this))
                                 {
                                 }
                                 break;
                              case 1:
                                 setStyle("skinClass",RentCollectorHireInfoSkin);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                 }
                                 break;
                              case 3:
                                 setStyle("skinClass",RentCollectorSuccessSkin);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                              case 2:
                                 setStyle("skinClass",RentCollectorRunningInfoSkin);
                                 if(_loc4_ && Boolean(this))
                                 {
                                 }
                           }
                           invalidateProperties();
                           §§goto(addr01cc);
                        }
                        §§goto(addr015b);
                     }
                     §§goto(addr0174);
                  }
                  §§goto(addr0165);
               }
               §§goto(addr0040);
            }
            addr01cc:
            return;
         }
         §§goto(addr002d);
      }
   }
}


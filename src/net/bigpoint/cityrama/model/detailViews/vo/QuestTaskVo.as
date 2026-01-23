package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.quest.QuestSystemTaskTargetTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class QuestTaskVo
   {
      
      private static const DEPOSIT_TASK_NONE:String = "DEPOSIT_TASK_NONE";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && QuestTaskVo))
      {
         DEPOSIT_TASK_NONE = "DEPOSIT_TASK_NONE";
      }
      
      private var _taskDTO:QuestTaskDTO;
      
      private var _questSubType:String;
      
      private var _questId:Number;
      
      private var _configQuestId:Number;
      
      private var _gfxId:int;
      
      private var _taskText:String;
      
      private var _finishedTaskText:String;
      
      private var _flavour:String;
      
      private var _isActive:Boolean;
      
      private var _isCompleted:Boolean;
      
      private var _isVirtual:Boolean;
      
      private var _isLocked:Boolean;
      
      private var _instantFinishCosts:Number = 0;
      
      private var _currentRealCurrency:Number = 0;
      
      private var _currentDepositStock:Number = 0;
      
      private var _depositGood:ConfigGoodDTO;
      
      private var _depositResource:ConfigResourceDTO;
      
      private var _linkParameter:Array;
      
      public function QuestTaskVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function checkChanged(param1:QuestTaskVo) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(this._isActive);
            if(_loc2_ || Boolean(param1))
            {
               §§push(param1.isActive);
               if(!_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(!§§pop());
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(_loc2_)
                        {
                           if(!§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    addr006a:
                                    §§push(this._isCompleted);
                                    if(_loc2_)
                                    {
                                       addr0073:
                                       §§push(param1.isCompleted);
                                       if(!(_loc3_ && Boolean(param1)))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§goto(addr009d);
                                          }
                                          §§goto(addr00ca);
                                       }
                                       §§goto(addr00b9);
                                    }
                                    addr009d:
                                    §§push(!§§pop());
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       addr00ab:
                                       var _temp_9:* = §§pop();
                                       §§push(_temp_9);
                                       §§push(_temp_9);
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00b9:
                                          if(!§§pop())
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr00ca:
                                                §§pop();
                                                if(_loc2_)
                                                {
                                                   addr00d0:
                                                   §§push(this._taskText == param1.taskText);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§goto(addr00e6);
                                                   }
                                                   §§goto(addr00f4);
                                                }
                                                §§goto(addr010f);
                                             }
                                          }
                                          §§goto(addr00f4);
                                       }
                                       §§goto(addr0124);
                                    }
                                    §§goto(addr00e6);
                                 }
                                 §§goto(addr00d0);
                              }
                              §§goto(addr0073);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr00fa);
                     }
                     §§goto(addr0132);
                  }
                  addr00e6:
                  §§push(!§§pop());
                  if(_loc2_ || _loc3_)
                  {
                     addr00f4:
                     var _temp_14:* = §§pop();
                     §§push(_temp_14);
                     §§push(_temp_14);
                     if(_loc2_)
                     {
                        addr00fa:
                        if(!§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              addr010f:
                              §§push(this._isLocked);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§goto(addr0133);
                              }
                              §§goto(addr0132);
                           }
                        }
                        addr0133:
                        §§goto(addr0124);
                     }
                     addr0124:
                     §§goto(addr0120);
                  }
                  addr0120:
                  §§push(§§pop() == param1.isLocked);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0132:
                     return !§§pop();
                  }
               }
               §§goto(addr00fa);
            }
            §§goto(addr0132);
         }
         §§goto(addr006a);
      }
      
      public function get depositedItemAmount() : Number
      {
         return this._taskDTO.currentValue;
      }
      
      public function get currentDepositStock() : Number
      {
         return this._currentDepositStock;
      }
      
      public function set currentDepositStock(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._currentDepositStock = param1;
         }
      }
      
      public function get currentRealCurrency() : Number
      {
         return this._currentRealCurrency;
      }
      
      public function set currentRealCurrency(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._currentRealCurrency = param1;
         }
      }
      
      public function set instantFinishCosts(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._instantFinishCosts = param1;
         }
      }
      
      public function get isDepositTask() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._depositGood == null);
            if(_loc2_ || _loc2_)
            {
               §§push(!§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr004b);
               }
               §§goto(addr005d);
            }
            addr004b:
            var _temp_4:* = §§pop();
            §§push(_temp_4);
            if(!_temp_4)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr005d:
                  §§pop();
                  §§goto(addr0072);
               }
               §§goto(addr0071);
            }
            addr0072:
            §§goto(addr005e);
         }
         addr005e:
         §§push(this._depositResource == null);
         if(_loc2_ || Boolean(this))
         {
            addr0071:
            return !§§pop();
         }
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get taskText() : String
      {
         return this._taskText;
      }
      
      public function get flavour() : String
      {
         return this._flavour;
      }
      
      public function get isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function get isCompleted() : Boolean
      {
         return this._isCompleted;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._isActive = param1;
         }
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._isCompleted = param1;
         }
      }
      
      public function get isVirtual() : Boolean
      {
         return this._isVirtual;
      }
      
      public function get isLocked() : Boolean
      {
         return this._isLocked;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._isLocked = param1;
         }
      }
      
      public function get isSkippable() : Boolean
      {
         return this._instantFinishCosts > 0;
      }
      
      public function set gfxId(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._gfxId = param1;
         }
      }
      
      public function set taskText(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._taskText = param1;
         }
      }
      
      public function set flavour(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._flavour = param1;
         }
      }
      
      public function set isVirtual(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._isVirtual = param1;
         }
      }
      
      public function get instantFinishCosts() : Number
      {
         return this._instantFinishCosts;
      }
      
      public function get neededItemDepositAmount() : Number
      {
         return this.taskDTO.taskConfig.questTaskTarget.target;
      }
      
      public function set depositGood(param1:ConfigGoodDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._depositGood = param1;
         }
      }
      
      public function set depositResource(param1:ConfigResourceDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._depositResource = param1;
         }
      }
      
      public function get configQuestTaskId() : Number
      {
         return this._taskDTO.configQuestTaskID;
      }
      
      public function get questSubType() : String
      {
         return this._questSubType;
      }
      
      public function set questSubType(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._questSubType = param1;
         }
      }
      
      public function get questId() : Number
      {
         return this._questId;
      }
      
      public function set questId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._questId = param1;
         }
      }
      
      public function get finishedTaskText() : String
      {
         return this._finishedTaskText;
      }
      
      public function set finishedTaskText(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._finishedTaskText = param1;
         }
      }
      
      public function set taskDTO(param1:QuestTaskDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._taskDTO = param1;
         }
      }
      
      public function get taskDTO() : QuestTaskDTO
      {
         return this._taskDTO;
      }
      
      public function set configQuestId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._configQuestId = param1;
         }
      }
      
      public function get configQuestId() : Number
      {
         return this._configQuestId;
      }
      
      public function get depositItemConfigId() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._depositGood);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr003e:
                     §§push(this._depositGood.id);
                     if(_loc2_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0077:
                     addr007b:
                     return this._depositResource.id;
                  }
                  return §§pop();
               }
               addr005d:
               §§push(this._depositResource);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§goto(addr0077);
                     }
                  }
                  return NaN;
               }
               §§goto(addr007b);
            }
            §§goto(addr003e);
         }
         §§goto(addr005d);
      }
      
      public function get depositBarTooltip() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._depositGood)
            {
               if(_loc1_ || _loc1_)
               {
                  §§push(LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.deposit.progress.tooltip",[this.depositItemName,LocaUtils.getThousendSeperatedNumber(this.currentDepositStock)]));
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§goto(addr006e);
               }
               §§goto(addr00a0);
            }
            addr006e:
            if(this._depositResource)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr00a0:
                  return LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.deposit.resource.progress.tooltip",[this.depositItemName,LocaUtils.getThousendSeperatedNumber(this.currentDepositStock)]);
                  addr0083:
               }
            }
            return "";
         }
         §§goto(addr0083);
      }
      
      public function get depositButtonLabel() : String
      {
         return LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.deposit.button.label.capital");
      }
      
      public function get depositButtonTooltip() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._depositGood)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.deposit.button.tooltip"));
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  §§goto(addr0077);
               }
            }
            else
            {
               addr005e:
               if(this._depositResource)
               {
                  if(!_loc1_)
                  {
                     addr0077:
                     return §§pop();
                     §§push(LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.deposit.resource.button.tooltip"));
                  }
               }
            }
            return "";
         }
         §§goto(addr005e);
      }
      
      public function get skipText() : String
      {
         return LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.skipText",[LocaUtils.getThousendSeperatedNumber(this.instantFinishCosts)]);
      }
      
      private function get depositItemName() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._depositGood)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(LocaUtils);
                  §§push("rcl.goods.goodname");
                  §§push("rcl.goods.goodname.");
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(§§pop() + this._depositGood.localeId);
                  }
                  return §§pop().getString(§§pop(),§§pop());
               }
               §§goto(addr00dd);
            }
            else if(this._depositResource)
            {
               §§goto(addr00dd);
            }
            §§goto(addr01d8);
         }
         addr00dd:
         §§push(this._depositResource.type);
         loop0:
         while(true)
         {
            var _loc1_:* = §§pop();
            if(!(_loc3_ && _loc1_))
            {
               §§push(ServerResConst.RESOURCE_REALCURRENCY);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(_loc1_);
                  if(_loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr017a:
                           §§push(2);
                           if(_loc3_ && _loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(_loc1_);
                           if(_loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    addr013e:
                                    §§push(1);
                                    if(_loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr017a);
                                 }
                              }
                              else
                              {
                                 §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr015b:
                                    §§push(_loc1_);
                                    if(_loc2_ || _loc1_)
                                    {
                                       addr0169:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc2_ || Boolean(this))
                                          {
                                             §§goto(addr017a);
                                          }
                                          else
                                          {
                                             addr01a3:
                                             §§push(3);
                                             if(_loc2_ || Boolean(this))
                                             {
                                             }
                                          }
                                          addr01c2:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.realcurrency"));
                                                if(_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                break loop0;
                                             case 1:
                                                §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.virtualcurrency"));
                                                if(_loc2_)
                                                {
                                                   break loop0;
                                                }
                                                break;
                                             case 2:
                                                §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.productionpoints"));
                                                if(!_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             case 3:
                                                §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.educationpoints"));
                                                if(_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             default:
                                                addr01d8:
                                                return "";
                                          }
                                       }
                                       else
                                       {
                                          addr019f:
                                          addr019e:
                                          if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc1_)
                                          {
                                             §§goto(addr01a3);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                          §§goto(addr01c2);
                                       }
                                       §§goto(addr01a3);
                                    }
                                    §§goto(addr019f);
                                 }
                                 §§goto(addr019e);
                              }
                              §§goto(addr01c2);
                           }
                           §§goto(addr0169);
                        }
                        §§goto(addr015b);
                     }
                     §§goto(addr01c2);
                  }
                  §§goto(addr019f);
               }
               §§goto(addr015b);
            }
            §§goto(addr013e);
         }
         return §§pop();
      }
      
      public function get linkParameter() : Array
      {
         return this._linkParameter;
      }
      
      public function set linkParameter(param1:Array) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._linkParameter = param1;
         }
      }
      
      public function get depositType() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            if(this._depositGood)
            {
               if(_loc1_)
               {
                  §§push(QuestSystemTaskTargetTypeConstants.GOOD);
                  if(_loc1_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§goto(addr004d);
               }
               §§goto(addr0060);
            }
         }
         addr004d:
         if(this._depositResource)
         {
            if(!_loc2_)
            {
               addr0060:
               return QuestSystemTaskTargetTypeConstants.RESOURCE;
            }
         }
         return "";
      }
      
      public function getTaskIconVo(param1:Boolean = false) : BriskDynaVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(this.isCompleted);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§push(§§pop());
               if(_loc3_ || _loc3_)
               {
                  addr0037:
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           addr0050:
                           §§push(param1);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr005f:
                              §§push(!§§pop());
                              if(!_loc4_)
                              {
                                 addr0066:
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       return new BriskDynaVo("gui_popups_questPopup","task_checkmark_grey");
                                    }
                                 }
                                 §§push(this.isDepositTask);
                              }
                              if(!§§pop())
                              {
                                 §§push(§§findproperty(BriskDynaVo));
                                 §§push("gui_popups_questPopup");
                                 §§push("task");
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + this.gfxId.toString());
                                 }
                                 return new §§pop().BriskDynaVo(§§pop(),§§pop());
                              }
                              if(!_loc4_)
                              {
                                 if(this._depositGood)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr009d);
                                    }
                                    else
                                    {
                                       addr0137:
                                       var _loc2_:* = this._depositResource.type;
                                       if(_loc3_ || param1)
                                       {
                                          §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(0);
                                                      if(_loc3_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr01e4:
                                                      §§push(2);
                                                      if(_loc3_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc3_ || param1)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               addr01a4:
                                                               §§push(1);
                                                               if(_loc4_ && _loc3_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr01e4);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                            if(!_loc4_)
                                                            {
                                                               addr01c3:
                                                               §§push(_loc2_);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  addr01d2:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc4_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§goto(addr01e4);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01f9:
                                                                        §§push(3);
                                                                        if(_loc3_)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr021c:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           return new BriskDynaVo("gui_popups_questPopup","task50016");
                                                                        case 1:
                                                                           return new BriskDynaVo("gui_popups_questPopup","task50014");
                                                                        case 2:
                                                                           return new BriskDynaVo("gui_popups_questPopup","task50030");
                                                                        case 3:
                                                                           return new BriskDynaVo("gui_popups_questPopup","task50035");
                                                                        default:
                                                                           §§goto(addr0255);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr01f5:
                                                                     addr01f4:
                                                                     if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc2_)
                                                                     {
                                                                        §§goto(addr01f9);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(4);
                                                                     }
                                                                     §§goto(addr021c);
                                                                  }
                                                                  §§goto(addr01f9);
                                                               }
                                                               §§goto(addr01f5);
                                                            }
                                                            §§goto(addr01f4);
                                                         }
                                                         §§goto(addr021c);
                                                      }
                                                      §§goto(addr01f5);
                                                   }
                                                   §§goto(addr01c3);
                                                }
                                                §§goto(addr021c);
                                             }
                                             §§goto(addr01d2);
                                          }
                                          §§goto(addr01c3);
                                       }
                                       §§goto(addr01a4);
                                    }
                                 }
                                 else
                                 {
                                    addr00c4:
                                    if(this._depositResource)
                                    {
                                       §§goto(addr0137);
                                    }
                                 }
                                 addr0255:
                                 return null;
                              }
                              §§goto(addr00c4);
                           }
                           §§goto(addr0066);
                        }
                        addr009d:
                        §§push(§§findproperty(BriskDynaVo));
                        §§push("gui_popups_smallGoodIcons");
                        §§push("small_");
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(§§pop() + this._depositGood.gfxId);
                        }
                        return new §§pop().BriskDynaVo(§§pop(),§§pop());
                     }
                     §§goto(addr005f);
                  }
                  §§goto(addr0066);
               }
               §§goto(addr005f);
            }
            §§goto(addr0037);
         }
         §§goto(addr0050);
      }
   }
}


package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentSecurityBarVo;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentThresholdBarVo;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.view.common.components.*;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class DepartmentSecurityBarComponent extends SkinnableComponent
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "departmentImage":true,
            "securityGrade1":true,
            "securityGrade2":true,
            "securityGrade3":true,
            "partComponent":true,
            "labelDisplay":true
         };
      }
      
      private var _data:DepartmentSecurityBarVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _sortedConfigSecurityGrades:Vector.<ConfigSecurityGradeDTO>;
      
      private var _label:String = "";
      
      private var _currentThreshold:int;
      
      public var partComponent:SecurityBarPartComponent;
      
      public var labelDisplay:LocaLabel;
      
      public var departmentImage:BriskImageDynaLib;
      
      public var securityGrade1:SecurityGradeComponent;
      
      public var securityGrade2:SecurityGradeComponent;
      
      public var securityGrade3:SecurityGradeComponent;
      
      private var _securityReference:ConfigSecurityGradeDTO;
      
      public function DepartmentSecurityBarComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public function set data(param1:DepartmentSecurityBarVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_ || _loc3_)
               {
                  addr0053:
                  this._data = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     this._dataIsDirty = true;
                     if(!_loc2_)
                     {
                        addr006f:
                        invalidateProperties();
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr006f);
               }
            }
            addr0074:
            return;
         }
         §§goto(addr0053);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.commitProperties();
            if(_loc2_ || Boolean(this))
            {
               if(this._dataIsDirty)
               {
                  if(_loc2_)
                  {
                     this._dataIsDirty = false;
                     if(_loc2_)
                     {
                        this._currentThreshold = this._data.currentAttributePoints;
                        if(_loc2_ || _loc1_)
                        {
                           this._sortedConfigSecurityGrades = this._data.configSecurityGrades;
                           if(!_loc1_)
                           {
                              addr0079:
                              this._securityReference = null;
                              if(!_loc1_)
                              {
                                 this.initSecurityGrades();
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr009f:
                                    this.successProgress = Math.max(0,this._data.currentAttributePoints);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr00c0:
                                       this.departmentImage.dynaBmpSourceName = this._data.gfxId.toString();
                                    }
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00c0);
                           }
                        }
                     }
                     §§goto(addr009f);
                  }
               }
            }
            addr00d1:
            return;
         }
         §§goto(addr0079);
      }
      
      private function initSecurityGrades() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               if(§§pop() >= this._sortedConfigSecurityGrades.length)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               else
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§push(0);
                                    if(_loc4_ && _loc2_)
                                    {
                                       addr00cc:
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          addr00d3:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr00dd:
                                                §§push(1);
                                                if(_loc4_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr00f6:
                                                §§push(2);
                                                if(_loc4_ && Boolean(this))
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(2);
                                             if(!_loc4_)
                                             {
                                                addr00f2:
                                                if(§§pop() === _loc2_)
                                                {
                                                   §§goto(addr00f6);
                                                }
                                                else
                                                {
                                                   §§push(3);
                                                }
                                             }
                                          }
                                          addr0116:
                                          if(_loc3_)
                                          {
                                             addr011d:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this.securityGrade1.data = this.getSecurityStatusVoByIndex(_loc1_);
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                   }
                                                   break;
                                                case 1:
                                                   this.securityGrade2.data = this.getSecurityStatusVoByIndex(_loc1_);
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      break;
                                                   }
                                                   continue loop0;
                                                case 2:
                                                   this.securityGrade3.data = this.getSecurityStatusVoByIndex(_loc1_);
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   addr0160:
                                                   this._securityReference = this._sortedConfigSecurityGrades[0];
                                                   break loop1;
                                             }
                                             _loc1_++;
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          continue;
                                       }
                                       §§goto(addr00f2);
                                    }
                                    §§goto(addr0116);
                                 }
                                 §§goto(addr00dd);
                              }
                              else
                              {
                                 §§push(1);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr00cc);
                                 }
                              }
                              §§goto(addr0116);
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr0116);
                     }
                     §§goto(addr00f6);
                  }
                  §§goto(addr011d);
               }
               §§goto(addr0160);
            }
            break;
         }
      }
      
      private function getSecurityStatusVoByIndex(param1:int) : SecurityStatusVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:SecurityStatusVo = new SecurityStatusVo(0,0,this._data.type,-1,param1 + 1);
         if(!_loc3_)
         {
            _loc2_.x = this._sortedConfigSecurityGrades[param1].rangeX;
            if(!_loc3_)
            {
               _loc2_.y = this._sortedConfigSecurityGrades[param1].rangeY;
               if(!_loc3_)
               {
                  _loc2_.x += this.getThresholdBySecurityGradeDTO(this._sortedConfigSecurityGrades[param1]);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0088:
                     _loc2_.y += this.getThresholdBySecurityGradeDTO(this._sortedConfigSecurityGrades[param1]);
                     if(!_loc3_)
                     {
                        _loc2_.x += _loc2_.x + this._data.buildingSizeX;
                        addr00a2:
                        if(_loc4_)
                        {
                           _loc2_.y += _loc2_.y + this._data.buildingSizeY;
                        }
                     }
                  }
                  return _loc2_;
               }
               §§goto(addr0088);
            }
            §§goto(addr00a2);
         }
         §§goto(addr0088);
      }
      
      private function set successProgress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.partComponent.data = this.getThresholdData(param1);
         }
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._label = param1;
            if(_loc2_)
            {
               addr0030:
               §§push(this.labelDisplay);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr0046:
                        this.labelDisplay.text = this.label;
                        addr0042:
                     }
                  }
                  return;
               }
               §§goto(addr0046);
            }
            §§goto(addr0042);
         }
         §§goto(addr0030);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super.partAdded(param1,param2);
            if(!_loc3_)
            {
               addr0033:
               if(param2 == this.labelDisplay)
               {
                  if(_loc4_ || Boolean(this))
                  {
                     §§goto(addr0056);
                  }
               }
               §§goto(addr0066);
            }
            addr0056:
            this.labelDisplay.text = this._label;
            if(_loc4_)
            {
               addr0066:
               if(param2 is SecurityBarPartComponent)
               {
                  if(!_loc3_)
                  {
                     param2.addEventListener("RollOverBarComponent",this.handleRollOverBarComponent);
                  }
               }
            }
            return;
         }
         §§goto(addr0033);
      }
      
      private function handleRollOverBarComponent(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.target.removeEventListener("RollOverBarComponent",this.handleRollOverBarComponent);
            if(!(_loc3_ && _loc2_))
            {
               param1.target.addEventListener("RollOutBarComponent",this.handleRollOutBarComponent);
               if(!_loc3_)
               {
                  §§goto(addr0063);
               }
            }
            §§goto(addr0080);
         }
         addr0063:
         this._currentThreshold = (param1.currentTarget as SecurityBarPartComponent).currentThreshold;
         if(!(_loc3_ && _loc2_))
         {
            addr0080:
            this.initSecurityGrades();
         }
      }
      
      private function handleRollOutBarComponent(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.target.addEventListener("RollOverBarComponent",this.handleRollOverBarComponent);
            if(_loc3_)
            {
               param1.target.removeEventListener("RollOutBarComponent",this.handleRollOutBarComponent);
               if(!_loc2_)
               {
                  this._currentThreshold = this._data.currentAttributePoints;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr006a:
                     this.initSecurityGrades();
                  }
                  §§goto(addr006f);
               }
               §§goto(addr006a);
            }
         }
         addr006f:
      }
      
      private function getThresholdData(param1:Number) : DepartmentThresholdBarVo
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc2_:DepartmentThresholdBarVo = new DepartmentThresholdBarVo();
         var _loc3_:Vector.<ConfigProfessionalAttributeThresholdDTO> = this.getThresholdDTOsBySecurityReference();
         if(!_loc8_)
         {
            §§push(_loc3_ == null);
            if(_loc9_ || Boolean(param1))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(_loc9_ || Boolean(_loc3_))
                  {
                     addr0059:
                     §§pop();
                     if(!_loc8_)
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr0070);
                  }
               }
               addr0066:
               §§goto(addr0060);
            }
            §§goto(addr0059);
         }
         addr0060:
         if(_loc3_.length < 1)
         {
            if(!_loc8_)
            {
               addr0070:
               return _loc2_;
            }
         }
         var _loc4_:* = 0;
         for each(_loc5_ in _loc3_)
         {
            if(_loc5_)
            {
               if(_loc9_ || Boolean(param1))
               {
                  _loc2_.thresholds.push(_loc5_.copy);
                  if(_loc8_ && Boolean(_loc3_))
                  {
                     continue;
                  }
               }
               §§push(_loc4_);
               if(!(_loc8_ && Boolean(this)))
               {
                  if(§§pop() > _loc5_.threshold)
                  {
                     continue;
                  }
                  if(_loc8_)
                  {
                     continue;
                  }
                  §§push(_loc5_.threshold);
               }
               _loc4_ = §§pop();
            }
         }
         if(_loc9_)
         {
            _loc2_.maxRange = _loc4_;
            if(_loc9_ || Boolean(this))
            {
               _loc2_.currentValue = param1;
            }
         }
         return _loc2_;
      }
      
      private function getThresholdDTOsBySecurityReference() : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc1_:Vector.<ConfigProfessionalAttributeThresholdDTO> = this._data.thresholds[ServerProfessionalConstants.ATTRIBUTE_PERCEPTION];
         var _loc2_:Vector.<ConfigProfessionalAttributeThresholdDTO> = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
         for each(_loc3_ in _loc1_)
         {
            if(!(_loc6_ && Boolean(this)))
            {
               if(this._securityReference.id != _loc3_.optionalConfigId)
               {
                  continue;
               }
               if(!_loc7_)
               {
                  continue;
               }
            }
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      private function getThresholdBySecurityGradeDTO(param1:ConfigSecurityGradeDTO) : Number
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:ConfigProfessionalAttributeThresholdDTO = null;
         §§push(param1.id);
         if(!(_loc9_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<ConfigProfessionalAttributeThresholdDTO> = this._data.thresholds[ServerProfessionalConstants.ATTRIBUTE_PERCEPTION];
         if(!(_loc9_ && Boolean(this)))
         {
            if(_loc3_ == null)
            {
               if(_loc8_ || Boolean(param1))
               {
                  addr0065:
                  §§push(0);
                  if(!_loc9_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr006e:
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               for each(_loc4_ in _loc3_)
               {
                  if(_loc8_ || _loc2_)
                  {
                     §§push(_loc2_);
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        §§push(§§pop() == _loc4_.optionalConfigId);
                        if(_loc8_ || Boolean(this))
                        {
                           var _temp_7:* = §§pop();
                           §§push(_temp_7);
                           if(_temp_7)
                           {
                              if(_loc8_)
                              {
                                 §§pop();
                                 if(_loc9_)
                                 {
                                    continue;
                                 }
                                 §§push(this._currentThreshold >= _loc4_.threshold);
                              }
                           }
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(_loc9_)
                        {
                           continue;
                        }
                        §§push(_loc4_.value);
                        if(_loc8_)
                        {
                           §§push(§§pop());
                        }
                     }
                     _loc5_ = §§pop();
                  }
               }
               return _loc5_;
            }
            §§goto(addr006e);
         }
         §§goto(addr0065);
      }
      
      override public function set toolTip(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.toolTip = param1;
            if(!_loc2_)
            {
               this.partComponent.toolTip = "";
            }
         }
      }
   }
}


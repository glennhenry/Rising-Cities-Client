package net.bigpoint.cityrama.model.architecturalBook.vo
{
   import mx.collections.ArrayList;
   
   public class VerifiedBlueprintVo
   {
      
      private var _bluePrintVO:BlueprintVo;
      
      private var _costVO:BlueprintImageValueVO;
      
      private var _consequenceVO:BlueprintImageValueVO;
      
      private var _outcomeVO:BlueprintImageVO;
      
      private var _materialVO:BlueprintImageVO;
      
      private var _buildableLandVO:BlueprintImageVO;
      
      private var _outcomeCCVO:BlueprintImageValueVO;
      
      private var _currentRealCurrencyAmount:Number;
      
      private var _residentVo:BlueprintImageVO;
      
      private var _descriptionVo:BlueprintImageVO;
      
      private var _securityVo:BlueprintSecuritygradeVO;
      
      private var _costVOList:ArrayList;
      
      private var _consequenceVOList:ArrayList;
      
      private var _outcomeVOList:ArrayList;
      
      private var _outcomeCCVOList:ArrayList;
      
      private var _materialVOList:ArrayList;
      
      private var _buildableLandVOList:ArrayList;
      
      private var _residentVoList:ArrayList;
      
      private var _securityVoList:ArrayList;
      
      public function VerifiedBlueprintVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               this._costVO = new BlueprintImageValueVO();
               if(!(_loc2_ && _loc1_))
               {
                  this._outcomeCCVO = new BlueprintImageValueVO();
                  if(!_loc2_)
                  {
                     this._consequenceVO = new BlueprintImageValueVO();
                     if(!_loc2_)
                     {
                        addr005d:
                        this._buildableLandVO = new BlueprintImageVO();
                        if(_loc1_ || _loc1_)
                        {
                           this._outcomeVO = new BlueprintImageVO();
                           if(!(_loc2_ && Boolean(this)))
                           {
                              this._descriptionVo = new BlueprintImageVO();
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00a5:
                                 this._materialVO = new BlueprintImageVO();
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr00c7:
                                    this._residentVo = new BlueprintImageVO();
                                    if(_loc1_ || Boolean(this))
                                    {
                                       addr00e0:
                                       this._securityVo = new BlueprintSecuritygradeVO();
                                       if(_loc1_)
                                       {
                                          addr00f0:
                                          this._costVOList = new ArrayList();
                                          if(_loc1_ || _loc1_)
                                          {
                                             this._consequenceVOList = new ArrayList();
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr0120:
                                                this._outcomeVOList = new ArrayList();
                                                if(_loc1_)
                                                {
                                                   addr0130:
                                                   this._outcomeCCVOList = new ArrayList();
                                                   if(_loc1_)
                                                   {
                                                      §§goto(addr0140);
                                                   }
                                                }
                                                §§goto(addr0172);
                                             }
                                             addr0140:
                                             this._materialVOList = new ArrayList();
                                             if(!_loc2_)
                                             {
                                                this._buildableLandVOList = new ArrayList();
                                                addr0150:
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   addr0172:
                                                   this._residentVoList = new ArrayList();
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      addr018b:
                                                      this._securityVoList = new ArrayList();
                                                   }
                                                   §§goto(addr0196);
                                                }
                                                §§goto(addr018b);
                                             }
                                             §§goto(addr0196);
                                          }
                                          §§goto(addr0172);
                                       }
                                       §§goto(addr0120);
                                    }
                                    §§goto(addr0130);
                                 }
                                 §§goto(addr00e0);
                              }
                              addr0196:
                              return;
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr0150);
                     }
                     §§goto(addr018b);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr005d);
            }
            §§goto(addr00f0);
         }
         §§goto(addr00a5);
      }
      
      public function cleanAll() : void
      {
      }
      
      public function get bluePrintVO() : BlueprintVo
      {
         return this._bluePrintVO;
      }
      
      public function set bluePrintVO(param1:BlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._bluePrintVO = param1;
         }
      }
      
      public function get outcomeVO() : BlueprintImageVO
      {
         return this._outcomeVO;
      }
      
      public function set outcomeVO(param1:BlueprintImageVO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._outcomeVO = param1;
         }
      }
      
      public function get materialVO() : BlueprintImageVO
      {
         return this._materialVO;
      }
      
      public function set materialVO(param1:BlueprintImageVO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._materialVO = param1;
         }
      }
      
      public function get buildableLandVO() : BlueprintImageVO
      {
         return this._buildableLandVO;
      }
      
      public function set buildableLandVO(param1:BlueprintImageVO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._buildableLandVO = param1;
         }
      }
      
      public function get consequenceVO() : BlueprintImageValueVO
      {
         return this._consequenceVO;
      }
      
      public function set consequenceVO(param1:BlueprintImageValueVO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._consequenceVO = param1;
         }
      }
      
      public function get costVO() : BlueprintImageValueVO
      {
         return this._costVO;
      }
      
      public function set costVO(param1:BlueprintImageValueVO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._costVO = param1;
         }
      }
      
      public function get costVOList() : ArrayList
      {
         return this._costVOList;
      }
      
      public function set costVOList(param1:ArrayList) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._costVOList = param1;
         }
      }
      
      public function get consequenceVOList() : ArrayList
      {
         return this._consequenceVOList;
      }
      
      public function set consequenceVOList(param1:ArrayList) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._consequenceVOList = param1;
         }
      }
      
      public function get outcomeVOList() : ArrayList
      {
         return this._outcomeVOList;
      }
      
      public function set outcomeVOList(param1:ArrayList) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._outcomeVOList = param1;
         }
      }
      
      public function get materialVOList() : ArrayList
      {
         return this._materialVOList;
      }
      
      public function set materialVOList(param1:ArrayList) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._materialVOList = param1;
         }
      }
      
      public function get buildableLandVOList() : ArrayList
      {
         return this._buildableLandVOList;
      }
      
      public function set buildableLandVOList(param1:ArrayList) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._buildableLandVOList = param1;
         }
      }
      
      public function get outcomeCCVOList() : ArrayList
      {
         return this._outcomeCCVOList;
      }
      
      public function set outcomeCCVOList(param1:ArrayList) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._outcomeCCVOList = param1;
         }
      }
      
      public function get outcomeCCVO() : BlueprintImageValueVO
      {
         return this._outcomeCCVO;
      }
      
      public function set outcomeCCVO(param1:BlueprintImageValueVO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._outcomeCCVO = param1;
         }
      }
      
      public function get currentRealCurrencyAmount() : Number
      {
         return this._currentRealCurrencyAmount;
      }
      
      public function set currentRealCurrencyAmount(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._currentRealCurrencyAmount = param1;
         }
      }
      
      public function get residentVoList() : ArrayList
      {
         return this._residentVoList;
      }
      
      public function get residentVo() : BlueprintImageVO
      {
         return this._residentVo;
      }
      
      public function get descriptionVo() : BlueprintImageVO
      {
         return this._descriptionVo;
      }
      
      public function set descriptionVo(param1:BlueprintImageVO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._descriptionVo = param1;
         }
      }
      
      public function get securityVo() : BlueprintSecuritygradeVO
      {
         return this._securityVo;
      }
      
      public function set securityVo(param1:BlueprintSecuritygradeVO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._securityVo = param1;
         }
      }
      
      public function get securityVoList() : ArrayList
      {
         return this._securityVoList;
      }
      
      public function set securityVoList(param1:ArrayList) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._securityVoList = param1;
         }
      }
   }
}


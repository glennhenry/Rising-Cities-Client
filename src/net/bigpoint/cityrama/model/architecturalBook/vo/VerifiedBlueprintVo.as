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
         super();
         this._costVO = new BlueprintImageValueVO();
         this._outcomeCCVO = new BlueprintImageValueVO();
         this._consequenceVO = new BlueprintImageValueVO();
         this._buildableLandVO = new BlueprintImageVO();
         this._outcomeVO = new BlueprintImageVO();
         this._descriptionVo = new BlueprintImageVO();
         this._materialVO = new BlueprintImageVO();
         this._residentVo = new BlueprintImageVO();
         this._securityVo = new BlueprintSecuritygradeVO();
         this._costVOList = new ArrayList();
         this._consequenceVOList = new ArrayList();
         this._outcomeVOList = new ArrayList();
         this._outcomeCCVOList = new ArrayList();
         this._materialVOList = new ArrayList();
         this._buildableLandVOList = new ArrayList();
         this._residentVoList = new ArrayList();
         this._securityVoList = new ArrayList();
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
         this._bluePrintVO = param1;
      }
      
      public function get outcomeVO() : BlueprintImageVO
      {
         return this._outcomeVO;
      }
      
      public function set outcomeVO(param1:BlueprintImageVO) : void
      {
         this._outcomeVO = param1;
      }
      
      public function get materialVO() : BlueprintImageVO
      {
         return this._materialVO;
      }
      
      public function set materialVO(param1:BlueprintImageVO) : void
      {
         this._materialVO = param1;
      }
      
      public function get buildableLandVO() : BlueprintImageVO
      {
         return this._buildableLandVO;
      }
      
      public function set buildableLandVO(param1:BlueprintImageVO) : void
      {
         this._buildableLandVO = param1;
      }
      
      public function get consequenceVO() : BlueprintImageValueVO
      {
         return this._consequenceVO;
      }
      
      public function set consequenceVO(param1:BlueprintImageValueVO) : void
      {
         this._consequenceVO = param1;
      }
      
      public function get costVO() : BlueprintImageValueVO
      {
         return this._costVO;
      }
      
      public function set costVO(param1:BlueprintImageValueVO) : void
      {
         this._costVO = param1;
      }
      
      public function get costVOList() : ArrayList
      {
         return this._costVOList;
      }
      
      public function set costVOList(param1:ArrayList) : void
      {
         this._costVOList = param1;
      }
      
      public function get consequenceVOList() : ArrayList
      {
         return this._consequenceVOList;
      }
      
      public function set consequenceVOList(param1:ArrayList) : void
      {
         this._consequenceVOList = param1;
      }
      
      public function get outcomeVOList() : ArrayList
      {
         return this._outcomeVOList;
      }
      
      public function set outcomeVOList(param1:ArrayList) : void
      {
         this._outcomeVOList = param1;
      }
      
      public function get materialVOList() : ArrayList
      {
         return this._materialVOList;
      }
      
      public function set materialVOList(param1:ArrayList) : void
      {
         this._materialVOList = param1;
      }
      
      public function get buildableLandVOList() : ArrayList
      {
         return this._buildableLandVOList;
      }
      
      public function set buildableLandVOList(param1:ArrayList) : void
      {
         this._buildableLandVOList = param1;
      }
      
      public function get outcomeCCVOList() : ArrayList
      {
         return this._outcomeCCVOList;
      }
      
      public function set outcomeCCVOList(param1:ArrayList) : void
      {
         this._outcomeCCVOList = param1;
      }
      
      public function get outcomeCCVO() : BlueprintImageValueVO
      {
         return this._outcomeCCVO;
      }
      
      public function set outcomeCCVO(param1:BlueprintImageValueVO) : void
      {
         this._outcomeCCVO = param1;
      }
      
      public function get currentRealCurrencyAmount() : Number
      {
         return this._currentRealCurrencyAmount;
      }
      
      public function set currentRealCurrencyAmount(param1:Number) : void
      {
         this._currentRealCurrencyAmount = param1;
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
         this._descriptionVo = param1;
      }
      
      public function get securityVo() : BlueprintSecuritygradeVO
      {
         return this._securityVo;
      }
      
      public function set securityVo(param1:BlueprintSecuritygradeVO) : void
      {
         this._securityVo = param1;
      }
      
      public function get securityVoList() : ArrayList
      {
         return this._securityVoList;
      }
      
      public function set securityVoList(param1:ArrayList) : void
      {
         this._securityVoList = param1;
      }
   }
}


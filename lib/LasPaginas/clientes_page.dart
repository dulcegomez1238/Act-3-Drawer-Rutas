import 'package:flutter/material.dart';

class ClientesPage extends StatelessWidget {
  const ClientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F0),
      appBar: AppBar(
        title: const Text('Clientes - Florería Magui'),
        backgroundColor: const Color(0xFFFFB6C1),
        elevation: 0,
      ),
      drawer: _buildDrawer(context),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              image: NetworkImage(
                'data:image/jpeg;base64,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'
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFFFF0F0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFFFFB6C1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: const NetworkImage(
                          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAzwMBIgACEQEDEQH/xAAbAAADAAMBAQAAAAAAAAAAAAAEBQYAAwcCAf/EAEEQAAIBAwMCBAMFBgQFAwUAAAECAwAEEQUSIRMxBkFRYSJxgRQykaHBByNCUrHhFTNi0UNTgpLwcrLxFiQlNGP/xAAaAQACAwEBAAAAAAAAAAAAAAACAwEEBQAG/8QAKREAAgICAgICAQIHAAAAAAAAAAECEQMhBDESQRNRMiIzFEJSYXGB4f/aAAwDAQACEQMRAD8As/8AEHk05nlgMEuNu3dnPyrXpMxyyHjHalviC7CPEIpMNG2cE+tfNP1Bfiwd0iAZNZt2a7Ka7W5uLZktJI43bgu4J2j1A8zXi0to7TEEQIRIx3PJPOSfc0vtYWfXIp5ZJubTKR7yF+8OcetOGH/3C+6Efh/81bgtFDI1ejRZQ2s97cQzx/EuGV/TPvVAiNNpKCJ9j7FwxGcfSlOmpnUJhgZwKc2fOngZ7bl49iRUpi5LoBiS7G9ZhFIcHBUEflzWiDTwLdo5sSB3LsG55xWwygapFAS543DPYUwyFBJTgeYrlT2iXrslr/wnYXXKQJA38WxRg/hSO58EOhBgfdg+tdFKqwyDjmvqpk+RFSSpejn1tpElx4dudKkISVPhBYZwccGidH1G502zuZdRSN5LR1SQQAgMu0DIzT14ulqlwpGNyI39RSuO0jutR1ayl/y5Vjb8v7UV2AD3kOo+IreKWG0MUHciQjcD5MpHbipbUrDULO4me5jmdWP+Y4JJ+tdK8PCW1ia2IZ0jO1SR5Ct2uXVulqwmDBjjah7t7UOhqk46IJtJ1Cz+z9QLItyoZCpJx7HND/ZJ4rw9WNgMk4A707/+sIOssEkDRLH8KmRcAewz3pk89hfptJzMRwy+X6ULoYpv2S77OmFwd/PJP5UzhuYoRH04AZtgXJ4FGppcVvmS6mhJY4j3LgH+9ZeWImMXVQROgOdvZ1oaC+RBujptt5wcZ3knHvXyRtuqxY/ijYfgRWu3lNuzwgHaV3ZoWSQ/boGz2LD8s/pT8T0Vs35FLYvmZh6rRpHpSbS5g16i/wAwIp1610+wI9Hkik3iW3M1jE4jDmKdWx6DkH+tOzSrxKsp0S5NvJ05lUMrYzgg5/SgCYPb/Hpduu0AozKPln+9fbRMTzD1Ct+n6VK3PiiTSo4YbyEyzuM4j4T8+xrTbeJdZv592maeMbMcgsCAfU1NN7B8kiP8Q3t3PqsmMIoztwfKt2jz3DXUQuMkMwACnvROq+Fdfef7RBZ9WJ+FJkAPPsaM0jwl4ilv4WmtY7aENlndxkevAqslout7Lm4JXWrEH732Z1P020Y/+fF7qw/p/tQurJ0tW0xycjc0YP8A0/2oqXiSI/6z/wC00+LtFZrZ5inW2u3kPfYAPnTjSpd2nsSQcO/I+ef1pFNbm4u44wxUEZOB6EU50eERQXEGchZOPqookCwWVC2rQTRkFUUFucYBNNJOUcDGMHikUMpM0aSRDcqEDJweGpzJw2cMcrgYPFRGonStmyEBkQFcZFZBg7x5AmvET7EUNnI9ayE/5hBxk8VNqiKYqvFVNXIB+/Bnv6N/el1qwh8UyFvuvaqT/wBLf3oi8Ei6/AzkFXhdMgjv3/ShZv3fiWycf8S3lQ+5ypqbT6O3Wymh2dQ7D8O3nj3pHdXUF5qEphmilaD4CFIO1vMU2luBBFJIx7Dj5+VROn6NqFrJfXkt0JmmyYjtAJJOeflSpOh0Fe2P57CzvEZbi3RsjGSOaRmyXT+v9ju+myYJQqDx+FJNI8Raxb6ibbUEncGQqFeHK49mUcfWnOtRydZ5g2wyxhVzxz3xSpNoeopm7Vrc6n4dlMgzKBvjYHBRsHBH5UfCXk0uIZ3SLCkgPrkYI/Hn61L6zeXtt4dmn6/TKRsFi2jBJGOffPpVJ4OvEv8ASbCe4UdV49vHY+tGmKaPNpHcBm7FSPiIOaHu3AmiI7iQfnmq9tPtokbZEBuFQuoExyIQOzr+Rp0PoRPex7p8yreQnaQd2Kpz941FxykXqBT92QeePOrd/fvUy7IXR4ND3sXXs54v5kIojyr53B9xihJOYeL4Z4rNFMOU2qXz5EHHf6158Dl4tUcGaQxOmRGTlVPtTDxGk76bIkIUlBJuz6Lz+lKPDcgiubebJ5DK3HHY0XcRfUixstZuIcpfJHIi/wAZIGKb6Xq9pqVuk1ryjnGR2qV8T6fdXOnyx2B+OT4WI7qvngUf4KtFs9DijGG/eHJ2kYxxjFZ3FyTvwZoZ8cUvJBfiVdlxp8n8l0AfbIYfrWy5ztRvSRf64r54pUC1V/JJozn/AKhXy6b9wx/lIOfkRV5dFX2ellWG9hlcgKMg5PtRvh+9W7e9dQQA4Az58d6Q66AbUZ5AkHH1pnp7CAN022s6gMp7j/zNEgWZd25lYEEKYpCwyO9NJJosoCSd3bHlQTEnknNCXwnEfUtGAlGOG5BGaCgx4yhVzuIx7ViAYJznPqKHs72VrVWvEAmz2Ttis+2yBMFEz9cV3iiLYFqqotzZyDZkS4OO/KsKWap8GraTJ/8A2dPxQ/7UfqUskqxnYvwSo2FHvS/xB8DWEv8Ay7tMn55H61KVHMO8TxPLocqxsUfggqOajbXU7qygea8upobZ1BiLKJY14H8Q5X/qFXl4vXs+nG2WIHDdj5YqR1GKz0cb7u0ljd8lVzvU/Kly7LGJqhhpXiCK6hXpRgsR3Azmg9Zjm1FyAwPR+LbngfP6ZoTTLue7lBijKRnzIoLVdFu73X40iuJY7TZiba5HVc+uPID+tI7Y90lYB4k6+rQT2VsjOtnDlyoYjdwdufoaa+AZ7hTHs+KGNQFiJxtIPJ+Zyfyqh0aO2hSUomyOc7Ln/Q2Thx7EHH4UvtrC3F/dpa5WKSUMD2AIHcfWj2hGmy6ecSWsjqcqq5+VQ+uRbYJjjtuP61QaJcTSQuk23jKMPUjzzSrVI0likBb7y/pTlIRKNAcpJk3Y7gMPwq+ibfbI3qoP5Vz+GQNbwMT3iXv8qs9MuOpY2xBzmMUbewEgw9q+V6Nea44kdUiH2m5hDZyzD/uU1E6bKYoV5xtNXWtfutWkx2Yxt+hqGRTHLcxKPuuR39DRx6YuemX6XW4ZVc+9FW9wEGANo3ZxSiNcYKHA8hRUcmRnGDWFHI4u0bUoJqhvqaQ3ESrJteJ2GQf/AD1FZJZxyAp8WDxjdSyQGVFjVsHcCDntTyAMUDNjf54rX40lkjZm5oODo1fZIYwcAlvU84oGaDaSVJpu4yOTQ0qgA5PHqTgU9x+hHYrDyp/qrOsTwQR86+yXVvgMlxCQRxhgc+fGDzxUnqXixIdftNNUKscyfFJIMYYnC49uD+VLbSIb8ex3qnimw0e4toL98NcH4doztHqfanbt8Kso3IwyHHIP1rnPibJmN0/7028ZbcuPhHc9+3b86stH8S6TJCsVtcBxgAAEHGfLHfil/LG6Y2MvLpDM4K8d/lSnxMf/AMazecbJIfowr1daju6TyWxgSU/us5PU4zgY8/PHevNjqFpdlo2w0coKkEY9iCD2IPf0qwoWrQzwbjY6DBoxhOTn/ep7xeEvJoo0IbpL8RB889qI1O4uZrqHRrIvFvTqTXHbbH2OP6V6i0krI0YBMa8LgZ+HypWXFKrOxyV0A6cnTtxx90ZoqRV/d9R+msmQW28nPv5UXa6e/TI6bgHjJGKQeKOrBc29pmN96cKUyVJPHNJjil9D55FVWVFhpsVsrmKUs1x98nkMAMAAegrRbxK5kFyhjfqMCGXHnwR9KPggCxQwEkCNMZU47DFbZLGN4D0iS45G5vvH09qfLE0iosm9i2Ipbkqpw+0Ej1qW1+6EExGTzzwafNfw27vLdQcSfCSTxHjjGaAv9Fh1g9dJwIgpA6bZ/OlwpbCm76EckxGm2rqccEfgatPCc/V0a3YnlSy/nU9a6dGI2tZiWEUrKCPfBp9pSrZwmNMBQ5IFS3bIiqRR5r5WA5VT6isoyCZ8UhI7lZcEEx98+nNQksqS6jcmJuGcnBHauheK96xRYVSkm5Cccg4qB1r9zqW9BgNGjYHHlj9KOAqZVI1bkbmhM4xWxXrzhvh8bCm9lPgAeRFII3o21ZTIFaXb6D3q/wALN4zr7KvJx+URtPOIkdjkhRkgDJ+grifjPxLd6tqMsFwxhhhYqlmeCD/qHrXVry4MqspQ7WbpgY5fy9eKUhtMzNbSxWktojMD1EDbm9SSOTnFazzrF6F8Of8ADy8pKye8H6Zql7p1vNap0GVuZ35XkcsAe5A4447UB400Y3Oq8wzrdxwjbNERsJHA3Z7f3rpGi3dokk1pZQx2yKBuCjYM48l+QFc/8W3iajqk1oL+a7sWGGHwqQxyCARjjt5ZpDw5ORvH/wAFTxS5eVuER1JbdfQXkeJFk6YMkZPDjzX6/lUFp8R0aC2lu7OSS5WcK4Q5Zkzz2ycMD3ptql/qOhaBHFp99C9kSFMtwMugxwBjg/1/ChNO1R7yxaW9VNQihO49CECSPj73cbl9a6cZ4bUl2KWTJxJSg49j2DVru3u7OWa2tktZJ2ltTPOXWEcqAcHvyR9aVQW2pWmotfw3VuvVmd5jk7Dk8nHqcfnXx9Pg1GC3uNLu4JQf+WhVoR6kEcDPl86G1XT3soEje6e4W4ziZRtXaBwvfk/CBn0qOPKEFV/qZZ4nIgsb/qZ0yLVcMLQGKS+MZKA/dbHJHr6/hU5ceOL2HaVt7VWzyG3HHkfOlGkTAX1rdX15FFcxjqBQoyyleF58+ceffNGeNdOENzHfRMGW4/zOON3qPn+maZDI56Kunbo3jx3qcmAv2dSe+2Lz+prxbahPqviaze6bc/VRfugLhTmprSsvMwwNiU00yTp6xa3B4VbhCcemRn8qajqOsxNsHPLHP9aMt2HB86Tm523kkQBcqcAE4Ao+KafGR0wPQr/epnOKAUJMQeIJLIzXFlcxzHcwbpx5+IEZzX3QFVbQqq7FHAHoKXeMrhEubTUCqJJ/kyK7kLjkjHPfvUFqmrambiT/AAHVZmQtzFuQ7V9AeKRN+h2PDL8mdG+0W9ld3L3M8cSZVizsABlf7V4uda0uSFHtb62kLPjasgyePSoG41i9XTHsr1ZolmTKPIiv1R5gnnFD6BqMtpcXt7DplvJqLEYZ1wAuP4SOxwBSvJew3Gk0dx0+dLiyhkjdWBUcg55oio/wf4lXV0iAJikZMsnBLN5848qrwCBzk+586NSvoQLfEMatZK7clZV21zrxEm2eAnPxRbf+1jXSNfRn0uUjgoQ2Pka5/wCJVDCFl/5rr/Q0zH+Qua/SNFfOK2eeaChkDCi0ORXm7N83Lkc1vl3vav0gS+07dp5PtWiFxE438o1GwR9M/wA8ROQaPFLxkmRITSXdqluftEUtjBsKyOQVOfUVr1qzs2gtItBmElwThRHIZAy4+Fmx29Pxoi+16CK9l03UrRJ48Z/egMHU9v8Az2rfolxolm+6wUW7HOA3IGfIZ7D2renj+VKuihyPKbuhPqnh3ULJUvZylyxGwRwZJUEHcO3n61JzeIDa3bx21mphgyJA0e7Azzk+Xaur3OqTORGrnYeeoh/8Iqau9G0e5M4aAI04xMYpCnU+eDzz61dwTWCHjFEcbnLix8JR/wBknqcqazosm8mJMjqMqg8fLyHvSSO3k0gHULSffbLwrIMMnsR71YanpujadYywROd4TcsbENuPoT6Ukiu/t7NBqk4CyrsdYURAfwqeVlxT/l2HzeXw+Qritkul9dyyzGB3gE5HVWFiocj5U2t9Rvby0j0zSbQ3CwyMVuEQlSMEY5Hbn8qu9F0HSNPIntrdFlxhXc7mA+tb7q9s7PiWSKMAYxx/Ss7xppmOm1tEx4e8Jsj/AGvVyHK9oyc8+WfL6UV4t1V51WytwBb2wAOAAN2MYAHkO3zphJe3Uun3t1HGIrWKMmJ2PxSH1A9KiJpSXwxPqTnvToKuyzFOMd+xvpa7LckjDNW6dxDESDjAzSTSrx3aXqyEgHj2rbqd6r25MbBu44o7D9HUvB122q2pv5Gy0hwT7gDP51WJgL2qL/ZioTwxakfxhm/FiatMZA/CkzdsbFaOJeOtcuNZFzYLp7fuLx1TD7g2CRuPHz4qXjtYlCA6XO1wNzqnGCB71S6hbak8+qGyhmeH7XI0ksUfKAuc49fpSvRNRmh1GOzQt9kjHwRzAK6nPkfr50pz+hipOrCYNYttSsEtOhc2rw/GrsglX8O+P9q86fb2V3m3srmYairs7DGEkwefkMVSaBNYRauktsh6dwZI4nD7hk5GSD25zSL7Rqb6hG8VusUaKd0pKvuQnHB9fau9Wxqe97LHwlpnVn6KTCEqcttxv9cZFV+l3WoxGQXTCREk2NkYK+mKitNv47JvtMrwhFZMddSZNpOCQBwfoaq7jxMsdq04hCjCMs6HejFiFH9aQsK+RSjIq5kk7Q71jEuj3W3ziJrnOrydbSuop5SYHHnytWV5rUJ1A6c5VP3G+XcMDB448hzUFPCZrW7Al2/Z3G3B75OP6Vfx9lbJ0bLO5JA5P403hmyBUnBMYyKc2txnHNebaNyEtDxGB70dbzdIBW/yzSiGTeuM0fYzrzDMOOwNcmG6FPjzQX1SwS/05tt1b+Y53J5j6VzSabV7UhLlGGOzbT+ldvWNoSQp3RGueftBhubO7juI5HjgcYjlUDCn+Vh51scPk68JFLPFraJ221jVVQGKc4HmGo861e3EYW9jhlHruAYfXNI5bqYOJJYISfN4k4b5im2kajLMpEdrZXQB5UDDAfKtB6K8fGXZ4nWyuAevdXFuSMHcwkX5etBW1ubSXr2ckF2qn/hjDfUN+hNWVhJolx1pf8PuWaDG4FQGOexVexrfbaNo+uF/8PN3BdR/fLRFcZ8myAKRLKrpky4sGtCjw9c6vr9zPbQCOGSGMORcNsB5wMEA0faeCb3T1N9qVjLfy5LOkUy4+pzkj2AFO7PwXb6aySnUZoI152xHaSfdjkkc9u1OdPna0fct9JcWxJ4lxuH1GM0tzqRGPixStEBqPj2A25tV0+2mUfD08Axg+5Pf6VMXMitvlQAb+wUYA+Vdf1Dw54T1SdprjT4BIxyXhLRFz77SM/Wttr4V8LRIqx6ZA+P+azP/AFJo/lidLHN+jiELNHaueAzsR8xRVlo+qXyLHZWc85b+SM4H1PFd5s9K0WzGLTT7KLHbZCo/SjetCgwpX5Cp+VA/FIReCdIvNL0KztbyMRyRxgONwOD9Korhlhidn4VRkn5VoN6o4BFSv7QPEs+k6VGlvb9ae5bYqEH7vmePp+NLc767DcWlbJuTV7rRLmO1iia5inLTDYB1MktwcnHlkfKtGu6VpfiHS5795Ft9QgiDMRhdxA4yDgHOe/tSTSLm61OeOCLSAbhjtDXUrZA5OSD5D1pbrF7dyXc9ntazEbCKWENuTjvgHsM80n4q37Kq85MpvDeixdXSbm2FuZ1ljaVj3CgHJAP6U4vtN6c9nPpKQhZWLsz4+BcZwB2754PpUx4eu2tXe6JEjQo2Gwcr8J+mKoLW+t9Q0lIbJljnEYKDO0q4Hbn1yabLG3EiPIcZVZrtpbae5ML26RloxJ1nYBWydo2j6HtXo6fNLaXunW92D0jCx6mVztlVsY9gO/vWnw34fvJerLqRZLkMXRHIyceuMgL34FC6tZanDqEm13kiMG4qiHYW8wDx2wMGgxR8HbQzLm8o+X0P9fmtJtYW56Am3RImW5B2k9l7Hv3o6x/wvUbQPPuJ7MoUjsfOpjT7nom1txfKvUZtvWX7pBPwnPHNNr+PVEgifTola7lc9W2QD0OWHtxT1N+hcZqUSfuI/wCOMgqeeDWy1ucY5pJaXV1Yno6iBsY/Aw4x7GjSwR8qRg+lYkoUail7Kizn7HNHl94DA4NTVncduac2swIGT2pLVFmMrHdjqTw4SQbk9626vZ2et6bPZsyjqrxkfdbyNLoiGrdGFVxuzz2NHCbidKCZy3xD4X1Lw44ZpGEDHCun3D7e1KLYXYljuFm+MElQfhIx7iu+RCG6s/3kccijkrKuR+FfI9F0lX6qafah/wCYRitTDzF4/qRQycaV/pZxdLu/vpUNzbTzXAOIzBKY8fPFdg8I6e9lpyCXcXxlmdtzZ9zTq2jjVgnSjHHBCgUJrd8unBCfutnPoKP5YyVhRi0/EMklX7q7SPPPaof9oWow2+nyQabCY78FZA8aHBGfi+fFb7zXZBayXMURdU5Ee7lvkK8WFg95qkE19Ik8V9FvjcDAHGQPoOMVEW3sZJJLs5lF4h1Zidkrtj1VQKKj8W67FtHUXJ7LtGf60f488P2egaw8Vrch1mJl6H8UWee/pnt8qnMESAnvjFXFCDXRRcpJ9lLb+NdYIHELHHbdg0VF401aW4+yv0oJG/ymYfCx/lz5GpxbJJrW3mjfbKyZ4PORxWRSbwba9i3j+bsR9aF44fRKnP7L/SrzV5mKy3Jgn77Hiz+dUFtFd3UjS3cwkWNAiALjk9yfXyqd0C4NxYxMHMksQ2uG78dj86aanqd3pulXF5YRiSeJd5gftIB3HHtQqKsb5OthetdPQdLuNSQJLf8AR2CR+CQMkAegyc1x6zgluGmutYlljaUbxM4zvcnz9qO139ot3rVuYp9OiRCMLtlJ4/CphNWuEh6BLPF36bHIFE8bZWyZL6Ke0lhjmMUQmMcfMbwYJ+LjB3cY/wB6O02doZJjawyvNC4lk6yKCIgMEZHOflmpew8TSWLRSQadA0kZzubPxegI9qb6f4qOoagz3VlbRSSONrMPgC5+Ljv+dS41HZTeN2dKs75DZ9V4Njvgfe5wfP196Qa9qM81i9vHbu8iSZk6qbd6545/CirBYkW3SyuRJGznplj1DGo8hjyz69silfiC4mtr2R7gxz28kLGSNCSdwBHfPHJ7d6THJTCSvQFpk2nzwWvXt2VJ3aOWF+drDPxjnjmnOleINTitBDAqmUEiCduzrkcY/H8KlfDO24vbqWOFY4kX90nOd3BByfQg1aX0vWjiUhzL0wx6ceFLee1gCOx5oItqdIlKmTXiRVu4fs6Luk/0ClYc6UbayvpctIm5WPl7GrW101Iss38K5Y1La1Yf4lqBZxyzf9q1mYsi/GXRt5IPv2ERSFHFObO4yBU1eqdHihMzFomON3mtG2lwCFZSCDyDUThq10dCdOiwtpsgUcZQUGRmpy0uOBTeOUSREDuKRRaUrDrW8Ec37x8I3wke1M4ZmiJBb0x71KwuHvEjcc5702bcF3ySmOMds+lEpENWNZrwxqjL97qKB9TU9+0K6EyWln1miaQsx2+Y8hQmoa+sELXCufs8A3F2P3selbLjUbK8up3v5Yoo3dBExIxETwAfY1f41tW+irmkl0JbfSn2hokk3bcFnl+9/WqvwvtNibGZx9ospVuIj/ozg49RkkfUUmW+MWqzabNYtboqgCWU/wCaD/EuOMCmPh/xZokaWVjLcCKWBSiPKRh1zjk+/B59qs5MjtKHRW80Sf7VyG8Wo3Hx20Z+mWqTm+6x8xirT9qNlcHX4tRB3W0sXwMOw29/61Hq4dMFe5q1DoTP8hlBZLJa2qkEEx4BHqDmi47QoQTyRWi3lYRoi9t2V9qZRsDw45qGHEM02T7OygcZ78VQpNK5HClfnU9bPGJVDcDPenlu/kJNyj0oaCOR+LNCh0fXZbdWkETjqx9hgEn4fpyKUIkcUokHUyOSGPlXR/2paatzY2moiMt0GMT4/lbsfxH5mubCKEH7smf/AFf2qxF2inNUzZPIsrbulgdjhsZxWQBGljWSFmiBy6Bzyo8q2KsKqCRJ79q+28kfXUBZACcZBrn1VEHRtN1UaxHaS2kENvtmeNI43DSEbex9OM4wfSmOreH+rpsEln1C0UhdYnXBlJGMH1zz2qG8OXMsdpfPbWbPdxEMsowVC+alfcA10SKOO68PxxG7271EkbRHLfCdx49AQRVKcaYHTIqwsrmW41K+igEKsoXpIpHQckLjHnjnt61ZCO0uYre4slcCGMQSQKSvOM5Ab86V6E7zGe4SeBbVTte2cklW5O7I88kHJ4ou1t1u22TRrPH0gAYpdrM+ck5+X9TSZStkrexlqBK2qhTgOfipebeNYgQvPPNZWVkez0bEnjeNDp9qCODj+lTmjSNDcGBCemRnB8vlX2srQxfslDL+6U9tI3w80/sSeDWVlUpdlvEHKio8kqgbgMipDxjq12CIFcKkmAxHfGe1ZWUzjpOasDltrG6IuPVbu/uv8NuJM2wcnAGDwOKcyTMPDV1DgFTf7Tkc4CZFfKytTIkmkv7GM5Nt/wCB54E1m8e8g0q5Zbmym46U43hMD+H++attQ8E6BeDqPZdNiv8AwnKD8BxWVlIzPxzUhuDcdnnxLYQJ+za4h+MrZ7OkWbJG1gACfPg4rkyeXzrKyruF3EOQygPA9jRuSCPevtZRhIJhjViM5pzaEptVe2a+Vlcwhhe20N7ptzb3KB4mQ5B9hUgfDGkkf/rY48jWVlOxdFXN2j4nhLSSc9OUY8hIajbuNLaedYlAw5UE8kDJ9a+1lFLsBGzw27WurQ9In99IFcnnI710pVDXkFmn7qPIbMXwkkgmsrKpZfyFv8iQjuGeK43JHtuHVXXbxjPl71Y29rbLFNbR26RxiNHJTIJbcRknPtWVlVs+ohxP/9k='
                        ),
                        backgroundColor: Colors.pink[100],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Florería Magui',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Av. Vicente Guerrero',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.phone, size: 16, color: Colors.white),
                      SizedBox(width: 4),
                      Text(
                        '656 234 7633',
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.email, size: 16, color: Colors.white),
                      SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          '@floreriaMaguigmail.com',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFFFF69B4)),
              title: const Text(
                'Inicio',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.shopping_bag, color: Color(0xFFFF69B4)),
              title: const Text(
                'Productos',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/productos');
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.people, color: Color(0xFFFF69B4)),
              title: const Text(
                'Empleados',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/empleados');
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.person, color: Color(0xFFFF69B4)),
              title: const Text(
                'Clientes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/clientes');
              },
            ),
          ],
        ),
      ),
    );
  }
}